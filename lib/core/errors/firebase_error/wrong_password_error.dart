import 'package:ecommerce/core/errors/firebase_error/firebase_error.dart';

class WrongPasswordError extends FirebaseError {
  WrongPasswordError() : super('Wrong Password Error');
}
