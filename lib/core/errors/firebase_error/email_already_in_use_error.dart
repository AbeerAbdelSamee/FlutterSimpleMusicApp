import 'package:ecommerce/core/errors/firebase_error/firebase_error.dart';

class EmailAlreadyInUseError extends FirebaseError {
  EmailAlreadyInUseError() : super('This email is already in use');
}
