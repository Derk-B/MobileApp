import 'package:app/shared/data/datasources/abstract_datasource.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantDatasource extends Datasource<CollectionReference> {
  @override
  CollectionReference fetchRef() {
    return FirebaseFirestore.instance.collection("restaurants");
  }
}
