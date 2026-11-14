import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';


class AppFailure implements Exception {
  final String message;
  final String? code;
  final Object cause;
  final StackTrace? stackTrace;

  const AppFailure({
    required this.message,
    required this.cause,
    this.code,
    this.stackTrace,
  });

  @override
  String toString() => message;
}

class SupabaseErrorHandler {
  SupabaseErrorHandler._();

  static AppFailure handle(Object error, [StackTrace? stackTrace]) {
    if (error is AppFailure) return error;

    String message = 'Something went wrong. Please try again.';
    String? code;

    if (error is TimeoutException) {
      code = 'timeout';
      message = 'The request timed out. Check whether it completed before trying again.';
    } else if (error is AuthException) {
      code = error.code ?? error.statusCode;
      message = _authMessages[error.code] ??
          _httpMessage(error.statusCode) ??
          'Authentication failed. Please check your details and try again.';
    } else if (error is PostgrestException) {
      code = error.code;
      // Only explicitly approved business errors are shown to users.
      // Never display arbitrary database messages, details, or hints.
      message = (code == 'P0001' ? _bookingMessages[error.message] : null) ??
          _databaseMessages[code] ??
          _httpMessage(code) ??
          'We could not complete the database request. Please try again.';
    } else if (error is StorageException) {
      code = error.statusCode;
      message = _httpMessage(code) ??
          'The file operation failed. Please check the file and try again.';
    } else if (error is FunctionException) {
      code = error.status.toString();
      message = _httpMessage(code) ??
          'The server could not complete this action. Please try again.';
    }

    return AppFailure(
      message: message,
      code: code,
      cause: error,
      stackTrace: stackTrace,
    );
  }

  static String? _httpMessage(String? code) {
    final status = int.tryParse(code ?? '');
    if (status != null && status >= 500 && status <= 599) {
      return 'The server could not complete your request. Please try again later.';
    }
    return const <String, String>{
      '401': 'Your session is invalid or expired. Please sign in again.',
      '403': 'You do not have permission to perform this action.',
      '404': 'The requested item could not be found.',
      '409': 'This action conflicts with existing data. Please refresh and try again.',
      '413': 'The file is too large. Please choose a smaller file.',
      '429': 'Too many requests. Please wait a moment and try again.',
    }[code];
  }

  static const _authMessages = <String, String>{
    'invalid_credentials': 'The email or password is incorrect.',
    'email_not_confirmed': 'Please confirm your email before signing in.',
    'user_already_exists': 'An account with these details already exists.',
    'email_exists': 'An account with this email already exists.',
    'weak_password': 'Please choose a stronger password.',
    'signup_disabled': 'New registrations are currently unavailable.',
    'over_email_send_rate_limit': 'Too many emails requested. Please wait before trying again.',
    'over_request_rate_limit': 'Too many requests. Please wait and try again.',
    'otp_expired': 'This code has expired or is invalid. Please request a new one.',
    'session_expired': 'Your session has expired. Please sign in again.',
    'refresh_token_not_found': 'Please sign in again to continue.',
    'refresh_token_already_used': 'Please sign in again to continue.',
  };

  static const _databaseMessages = <String, String>{
    '23505': 'This item already exists or the selected slot was just booked. Please refresh.',
    '23503': 'This action references missing data or an item still used by other records.',
    '23502': 'Some required information is missing.',
    '23514': 'Some information does not meet the required rules.',
    '42501': 'You do not have permission to perform this action.',
    '22P02': 'Some information has an invalid format.',
    'PGRST116': 'The request did not return exactly one item.',
    'PGRST301': 'Your session is invalid. Please sign in again.',
    'PGRST302': 'Please sign in to continue.',
    'PGRST303': 'Your session is invalid or expired. Please sign in again.',
  };

  static const _bookingMessages = <String, String>{
    'Sign in first': 'Please sign in to book an appointment.',
    'Pet not found': 'The pet could not be found in your account.',
    'Slot not found': 'This appointment slot could not be found.',
    'Slot unavailable': 'This appointment slot is no longer available.',
    'Pet already has an appointment at this time': 'Your pet already has an appointment at this time.',
    'Appointment not found': 'The appointment could not be found.',
    'Access denied': 'You do not have permission to manage this appointment.',
    'Appointment already closed': 'This appointment has already been completed or cancelled.',
    'Cannot cancel after start': 'An appointment cannot be cancelled after it starts.',
    'Assigned doctor only, after start': 'Only the assigned doctor can complete an appointment after it starts.',
    'Invalid status': 'This appointment status is not allowed.',
  };
}
