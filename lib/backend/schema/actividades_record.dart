import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ActividadesRecord extends FirestoreRecord {
  ActividadesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "ratings" field.
  List<int>? _ratings;
  List<int> get ratings => _ratings ?? const [];
  bool hasRatings() => _ratings != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _ratings = getDataList(snapshotData['ratings']);
    _image = snapshotData['image'] as String?;
    _location = snapshotData['location'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Actividades');

  static Stream<ActividadesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ActividadesRecord.fromSnapshot(s));

  static Future<ActividadesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ActividadesRecord.fromSnapshot(s));

  static ActividadesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ActividadesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ActividadesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ActividadesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ActividadesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ActividadesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createActividadesRecordData({
  String? name,
  String? image,
  String? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'image': image,
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}

class ActividadesRecordDocumentEquality implements Equality<ActividadesRecord> {
  const ActividadesRecordDocumentEquality();

  @override
  bool equals(ActividadesRecord? e1, ActividadesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.name == e2?.name &&
        listEquality.equals(e1?.ratings, e2?.ratings) &&
        e1?.image == e2?.image &&
        e1?.location == e2?.location;
  }

  @override
  int hash(ActividadesRecord? e) =>
      const ListEquality().hash([e?.name, e?.ratings, e?.image, e?.location]);

  @override
  bool isValidKey(Object? o) => o is ActividadesRecord;
}
