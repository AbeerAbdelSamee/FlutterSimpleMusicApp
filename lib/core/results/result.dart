

import '../errors/base_error.dart';

class Result<Data> {
  final Data data;
  final BaseError error;


  final bool isLocalResult;

  Result({this.data, this.isLocalResult = false, this.error}) : assert(data != null || error != null);

  bool get hasDataOnly => data != null && error == null;

  bool get hasErrorOnly => data == null && error != null;

  bool get hasDataAndError => data != null && error != null;
}

class RemoteResult<Data> extends Result<Data> {
  RemoteResult({Data data, BaseError error}) : super(data: data, error: error, isLocalResult: false);
}

class LocalResult<Data> extends Result<Data> {
  LocalResult({Data data, BaseError error}) : super(data: data, error: error, isLocalResult: false);
}
