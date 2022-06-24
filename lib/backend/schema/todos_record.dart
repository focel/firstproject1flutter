import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'todos_record.g.dart';

abstract class TodosRecord implements Built<TodosRecord, TodosRecordBuilder> {
  static Serializer<TodosRecord> get serializer => _$todosRecordSerializer;

  @nullable
  DateTime get time;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'medical_speciality')
  String get medicalSpeciality;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TodosRecordBuilder builder) => builder
    ..displayName = ''
    ..medicalSpeciality = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todos');

  static Stream<TodosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TodosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static TodosRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) => TodosRecord(
        (c) => c
          ..time = safeGet(
              () => DateTime.fromMillisecondsSinceEpoch(snapshot.data['time']))
          ..displayName = snapshot.data['display_name']
          ..medicalSpeciality = snapshot.data['medical_speciality']
          ..reference = TodosRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<TodosRecord>> search(
          {String term,
          FutureOr<LatLng> location,
          int maxResults,
          double searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'todos',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  TodosRecord._();
  factory TodosRecord([void Function(TodosRecordBuilder) updates]) =
      _$TodosRecord;

  static TodosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTodosRecordData({
  DateTime time,
  String displayName,
  String medicalSpeciality,
}) =>
    serializers.toFirestore(
        TodosRecord.serializer,
        TodosRecord((t) => t
          ..time = time
          ..displayName = displayName
          ..medicalSpeciality = medicalSpeciality));
