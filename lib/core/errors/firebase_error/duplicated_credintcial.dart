import 'package:ecommerce/core/errors/firebase_error/firebase_error.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DuplicatedCredinationalError extends FirebaseError {
  final FirebaseAuthException error;
  DuplicatedCredinationalError(this.error)
      : super('DuplicatedCredinational Error');
}
