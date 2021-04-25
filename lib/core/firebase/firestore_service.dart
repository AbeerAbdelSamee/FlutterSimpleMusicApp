import 'package:meta/meta.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/*
This class represent all possible CRUD operation for Firestore.
It contains all generic implementation needed based on the provided document
path and documentID,since most of the time in Firestore design, we will have
documentID and path for any document and collections.
 */
class FirestoreService {
  FirestoreService();
  Future<void> setData({
    @required String path,
    @required Map<String, dynamic> data,
    bool merge = false,
  }) async {
    final reference = FirebaseFirestore.instance.collection(path);
    await reference.add(data);
  }

  Future<void> bulkSet({
    @required String path,
    @required List<Map<String, dynamic>> datas,
    bool merge = false,
  }) async {
    final reference = FirebaseFirestore.instance.collection(path);
    final batchSet = FirebaseFirestore.instance.batch();

//    for()
//    batchSet.
  }

  Stream<List<T>> collectionStream<T>({
    @required String path,
    @required T builder(Map<String, dynamic> data, String documentID),
    Query queryBuilder(Query query),
    int sort(T lhs, T rhs),
  }) {
    Query query = FirebaseFirestore.instance.collection(path);
    if (queryBuilder != null) {
      query = queryBuilder(query);
    }
    final Stream<QuerySnapshot> snapshots = query.snapshots();
    return snapshots.map((snapshot) {
      final result = snapshot.docs
          .map((snapshot) => builder(snapshot.data(), snapshot.id))
          .where((value) => value != null)
          .toList();
      if (sort != null) {
        result.sort(sort);
      }
      return result;
    });
  }

  // Stream<T> documentStream<T>({
  //   @required String path,
  //   @required T builder(Map<String, dynamic> data, String documentID),
  // }) {
  //   final DocumentReference reference = Firestore.instance.document(path);
  //   final Stream<DocumentSnapshot> snapshots = reference.snapshots();
  //   return snapshots
  //       .map((snapshot) => builder(snapshot.data, snapshot.documentID));
  // }

}
