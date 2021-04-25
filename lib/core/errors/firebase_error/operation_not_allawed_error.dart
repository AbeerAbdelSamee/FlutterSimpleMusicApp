import 'package:ecommerce/core/errors/firebase_error/firebase_error.dart';

class OperationNotAllowedError extends FirebaseError {
  OperationNotAllowedError() : super('Operation not allowed');
}
