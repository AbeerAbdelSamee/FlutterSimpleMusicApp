import 'package:ecommerce/core/errors/firebase_error/firebase_error.dart';

class TooManyRequestError extends FirebaseError {
  TooManyRequestError() : super('Too Many Requests Error');
}
