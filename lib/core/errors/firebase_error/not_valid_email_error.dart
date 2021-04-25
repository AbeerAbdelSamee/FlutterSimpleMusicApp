import 'package:ecommerce/core/errors/firebase_error/firebase_error.dart';

class NotValidEmailError extends FirebaseError {
  NotValidEmailError() : super('Not valid email error');
}
