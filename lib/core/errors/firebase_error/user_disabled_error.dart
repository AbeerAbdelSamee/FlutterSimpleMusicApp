import 'package:ecommerce/core/errors/firebase_error/firebase_error.dart';

class UserDisabledError extends FirebaseError {
  UserDisabledError() : super('User Disabled Error');
}
