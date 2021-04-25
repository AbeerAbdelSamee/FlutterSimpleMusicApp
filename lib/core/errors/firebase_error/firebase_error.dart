import 'package:ecommerce/core/errors/base_error.dart';

class FirebaseError extends BaseError {
  final String message;

  FirebaseError(this.message);
}
