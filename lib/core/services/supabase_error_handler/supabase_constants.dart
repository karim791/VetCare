class SupabaseErrorCodes {
  // Authentication
  static const String invalidCredentials =
      'invalid_credentials';

  static const String emailNotConfirmed =
      'email_not_confirmed';

  static const String userAlreadyExists =
      'user_already_exists';

  static const String emailExists =
      'email_exists';

  static const String weakPassword =
      'weak_password';

  static const String userNotFound =
      'user_not_found';

  static const String sessionNotFound =
      'session_not_found';

  static const String missingSession =
      'missing_session';

  static const String rateLimitExceeded =
      'over_request_rate_limit';

  static const String emailRateLimitExceeded =
      'over_email_send_rate_limit';

  // PostgreSQL
  static const String uniqueViolation = '23505';

  static const String foreignKeyViolation = '23503';

  static const String notNullViolation = '23502';

  static const String insufficientPrivilege = '42501';

  static const String checkViolation = '23514';

  static const String invalidInput = '22P02';

  static const String rowNotFound = 'PGRST116';

  // Local errors
  static const String noInternet =
      'no_internet_connection';

  static const String timeout = 'timeout';

  static const String unknown = 'unknown_error';
}

class SupabaseErrorMessages {
  // Authentication
  static const String invalidCredentials =
      'Invalid email or password.';

  static const String emailNotConfirmed =
      'Please verify your email first.';

  static const String userAlreadyExists =
      'An account with this email already exists.';

  static const String weakPassword =
      'Please choose a stronger password.';

  static const String userNotFound =
      'User not found.';

  static const String sessionNotFound =
      'Your session has expired. Please sign in again.';

  static const String missingSession =
      'Unable to sign in. Please try again.';

  static const String rateLimitExceeded =
      'Too many requests. Please try again later.';

  // Database
  static const String uniqueViolation =
      'This record already exists.';

  static const String foreignKeyViolation =
      'This operation conflicts with related data.';

  static const String notNullViolation =
      'Please provide all required information.';

  static const String insufficientPrivilege =
      'You do not have permission to perform this action.';

  static const String checkViolation =
      'The provided data is invalid.';

  static const String invalidInput =
      'Invalid input data.';

  static const String rowNotFound =
      'Unable to retrieve the requested record.';

  // Storage
  static const String storageError =
      'Unable to complete the file operation.';

  // Edge Functions
  static const String functionError =
      'Unable to complete the request.';

  // General
  static const String authError =
      'Authentication failed. Please try again.';

  static const String databaseError =
      'A database error occurred.';

  static const String noInternet =
      'Please check your internet connection.';

  static const String timeout =
      'Request timed out. Please try again.';

  static const String defaultError =
      'Something went wrong. Please try again.';
}