import 'package:app/shared/data/datasources/abstract_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryDatasource
    extends Datasource<CollectionReference<Map<String, dynamic>>> {
  @override
  CollectionReference<Map<String, dynamic>> fetchRef() {
    return FirebaseFirestore.instance.collection("categories");
  }
}
