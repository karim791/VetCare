import 'dart:async';
import 'dart:io';

import 'package:supabase_flutter/supabase_flutter.dart';

import 'supabase_constants.dart';
import 'supabase_error_model.dart';

class SupabaseErrorHandler implements Exception {
  final SupabaseErrorModel errorModel;

  final Object? cause;
  final StackTrace? stackTrace;

  const SupabaseErrorHandler._({
    required this.errorModel,
    this.cause,
    this.stackTrace,
  });

  String get message => errorModel.message;

  String? get code => errorModel.code;

  int? get statusCode => errorModel.statusCode;

  factory SupabaseErrorHandler.handle(
    Object error, [
    StackTrace? stackTrace,
  ]) {
    return SupabaseErrorHandler._(
      errorModel: _handleError(error),
      cause: error,
      stackTrace: stackTrace,
    );
  }

  static SupabaseErrorModel _handleError(Object error) {
    if (error is SupabaseErrorHandler) {
      return error.errorModel;
    }

    if (error is AuthException) {
      return _handleAuthError(error);
    }

    if (error is PostgrestException) {
      return _handleDatabaseError(error);
    }

    if (error is StorageException) {
      return _handleStorageError(error);
    }

    if (error is FunctionException) {
      return _handleFunctionError(error);
    }

    if (error is SocketException) {
      return const SupabaseErrorModel(
        code: SupabaseErrorCodes.noInternet,
        message: SupabaseErrorMessages.noInternet,
      );
    }

    if (error is TimeoutException) {
      return const SupabaseErrorModel(
        code: SupabaseErrorCodes.timeout,
        message: SupabaseErrorMessages.timeout,
      );
    }

    return const SupabaseErrorModel(
      code: SupabaseErrorCodes.unknown,
      message: SupabaseErrorMessages.defaultError,
    );
  }

  // Authentication errors
  static SupabaseErrorModel _handleAuthError(
    AuthException error,
  ) {
    final message = switch (error.code) {
      SupabaseErrorCodes.invalidCredentials =>
        SupabaseErrorMessages.invalidCredentials,

      SupabaseErrorCodes.emailNotConfirmed =>
        SupabaseErrorMessages.emailNotConfirmed,

      SupabaseErrorCodes.userAlreadyExists ||
      SupabaseErrorCodes.emailExists =>
        SupabaseErrorMessages.userAlreadyExists,

      SupabaseErrorCodes.weakPassword =>
        SupabaseErrorMessages.weakPassword,

      SupabaseErrorCodes.userNotFound =>
        SupabaseErrorMessages.userNotFound,

      SupabaseErrorCodes.sessionNotFound =>
        SupabaseErrorMessages.sessionNotFound,

      SupabaseErrorCodes.missingSession =>
        SupabaseErrorMessages.missingSession,

      SupabaseErrorCodes.rateLimitExceeded ||
      SupabaseErrorCodes.emailRateLimitExceeded =>
        SupabaseErrorMessages.rateLimitExceeded,

      _ => SupabaseErrorMessages.authError,
    };

    return SupabaseErrorModel(
      message: message,
      code: error.code,
      statusCode: int.tryParse(error.statusCode ?? ''),
      details: error.message,
    );
  }

  // Database errors
  static SupabaseErrorModel _handleDatabaseError(
    PostgrestException error,
  ) {
    final message = switch (error.code) {
      SupabaseErrorCodes.uniqueViolation =>
        SupabaseErrorMessages.uniqueViolation,

      SupabaseErrorCodes.foreignKeyViolation =>
        SupabaseErrorMessages.foreignKeyViolation,

      SupabaseErrorCodes.notNullViolation =>
        SupabaseErrorMessages.notNullViolation,

      SupabaseErrorCodes.insufficientPrivilege =>
        SupabaseErrorMessages.insufficientPrivilege,

      SupabaseErrorCodes.checkViolation =>
        SupabaseErrorMessages.checkViolation,

      SupabaseErrorCodes.invalidInput =>
        SupabaseErrorMessages.invalidInput,

      SupabaseErrorCodes.rowNotFound =>
        SupabaseErrorMessages.rowNotFound,

      _ => SupabaseErrorMessages.databaseError,
    };

    return SupabaseErrorModel(
      message: message,
      code: error.code,
      details: error.details?.toString(),
      hint: error.hint,
    );
  }

  // Storage errors
  static SupabaseErrorModel _handleStorageError(
    StorageException error,
  ) {
    return SupabaseErrorModel(
      message: SupabaseErrorMessages.storageError,
      code: error.error,
      statusCode: int.tryParse(error.statusCode ?? ''),
      details: error.message,
    );
  }

  // Edge Functions errors
  static SupabaseErrorModel _handleFunctionError(
    FunctionException error,
  ) {
    return SupabaseErrorModel(
      message: SupabaseErrorMessages.functionError,
      statusCode: error.status,
      details: error.details?.toString(),
    );
  }

  @override
  String toString() {
    return 'SupabaseErrorHandler('
        'code: $code, '
        'message: $message'
        ')';
  }
}