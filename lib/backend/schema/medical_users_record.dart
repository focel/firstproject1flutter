import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'medical_users_record.g.dart';

abstract class MedicalUsersRecord
    implements Built<MedicalUsersRecord, MedicalUsersRecordBuilder> {
  static Serializer<MedicalUsersRecord> get serializer =>
      _$medicalUsersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: 'medical_code')
  String get medicalCode;

  @nullable
  @BuiltValueField(wireName: 'medical_speciality')
  String get medicalSpeciality;

  @nullable
  @BuiltValueField(wireName: 'current_address')
  String get currentAddress;

  @nullable
  @BuiltValueField(wireName: 'field_interests')
  String get fieldInterests;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'IamDoctor')
  bool get iamDoctor;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(MedicalUsersRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..photoUrl = ''
    ..phoneNumber = ''
    ..medicalCode = ''
    ..medicalSpeciality = ''
    ..currentAddress = ''
    ..fieldInterests = ''
    ..iamDoctor = false
    ..uid = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medicalUsers');

  static Stream<MedicalUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<MedicalUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  MedicalUsersRecord._();
  factory MedicalUsersRecord(
          [void Function(MedicalUsersRecordBuilder) updates]) =
      _$MedicalUsersRecord;

  static MedicalUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createMedicalUsersRecordData({
  String displayName,
  String email,
  String photoUrl,
  String phoneNumber,
  String medicalCode,
  String medicalSpeciality,
  String currentAddress,
  String fieldInterests,
  DateTime createdTime,
  bool iamDoctor,
  String uid,
}) =>
    serializers.toFirestore(
        MedicalUsersRecord.serializer,
        MedicalUsersRecord((m) => m
          ..displayName = displayName
          ..email = email
          ..photoUrl = photoUrl
          ..phoneNumber = phoneNumber
          ..medicalCode = medicalCode
          ..medicalSpeciality = medicalSpeciality
          ..currentAddress = currentAddress
          ..fieldInterests = fieldInterests
          ..createdTime = createdTime
          ..iamDoctor = iamDoctor
          ..uid = uid));
