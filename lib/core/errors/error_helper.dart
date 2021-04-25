import 'package:ecommerce/core/errors/firebase_error/firebase_error.dart';
import 'package:ecommerce/core/errors/socket_error.dart';
import 'package:ecommerce/core/errors/timeout_error.dart';
import 'package:ecommerce/core/errors/unauthorized_error.dart';

import 'bad_request_error.dart';
import 'base_error.dart';
import 'custom_error.dart';
import 'forbidden_error.dart';
import 'internal_server_error.dart';
import 'net_error.dart';
import 'not_found_error.dart';

class ErrorHelper {
  final String notFoundErrorMessage = 'Not found error';
  final String unauthorizedErrorMessage = 'Unauthorized error';
  final String badRequestErrorErrorMessage = 'Bad request error';
  final String forbiddenErrorErrorMessage = 'Forbidden error';
  final String internalServerErrorMessage = 'Internal server error';
  final String timeoutErrorErrorMessage =
      'Timeout error, it seems your internet connection is poor, Please try again';
  final String unExpectedErrorMessage = 'Unexpected error happened';
  final String connectionErrorMessage =
      'Connection error occurred, please check your internet connection and try again';

  String getErrorMessage(BaseError error) {
    if (error is NotFoundError) {
      return notFoundErrorMessage;
    } else if (error is UnauthorizedError) {
      return unauthorizedErrorMessage;
    } else if (error is BadRequestError) {
      return badRequestErrorErrorMessage;
    } else if (error is ForbiddenError) {
      return forbiddenErrorErrorMessage;
    } else if (error is InternalServerError) {
      return internalServerErrorMessage;
    } else if (error is TimeoutError) {
      return timeoutErrorErrorMessage;
    } else if (error is NetError || error is SocketError) {
      return connectionErrorMessage;
    } else if (error is CustomError) {
      return error.message;
    } else if (error is FirebaseError) {
      return error.message;
    } else {
      return unExpectedErrorMessage;
    }
  }

  /// here we can add different error mapper from above
}
