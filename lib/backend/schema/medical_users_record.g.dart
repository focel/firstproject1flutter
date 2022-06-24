// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medical_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MedicalUsersRecord> _$medicalUsersRecordSerializer =
    new _$MedicalUsersRecordSerializer();

class _$MedicalUsersRecordSerializer
    implements StructuredSerializer<MedicalUsersRecord> {
  @override
  final Iterable<Type> types = const [MedicalUsersRecord, _$MedicalUsersRecord];
  @override
  final String wireName = 'MedicalUsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, MedicalUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medicalCode;
    if (value != null) {
      result
        ..add('medical_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.medicalSpeciality;
    if (value != null) {
      result
        ..add('medical_speciality')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.currentAddress;
    if (value != null) {
      result
        ..add('current_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fieldInterests;
    if (value != null) {
      result
        ..add('field_interests')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.iamDoctor;
    if (value != null) {
      result
        ..add('IamDoctor')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  MedicalUsersRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MedicalUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'medical_code':
          result.medicalCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'medical_speciality':
          result.medicalSpeciality = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_address':
          result.currentAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'field_interests':
          result.fieldInterests = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'IamDoctor':
          result.iamDoctor = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$MedicalUsersRecord extends MedicalUsersRecord {
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final String phoneNumber;
  @override
  final String medicalCode;
  @override
  final String medicalSpeciality;
  @override
  final String currentAddress;
  @override
  final String fieldInterests;
  @override
  final DateTime createdTime;
  @override
  final bool iamDoctor;
  @override
  final String uid;
  @override
  final DocumentReference<Object> reference;

  factory _$MedicalUsersRecord(
          [void Function(MedicalUsersRecordBuilder) updates]) =>
      (new MedicalUsersRecordBuilder()..update(updates)).build();

  _$MedicalUsersRecord._(
      {this.displayName,
      this.email,
      this.photoUrl,
      this.phoneNumber,
      this.medicalCode,
      this.medicalSpeciality,
      this.currentAddress,
      this.fieldInterests,
      this.createdTime,
      this.iamDoctor,
      this.uid,
      this.reference})
      : super._();

  @override
  MedicalUsersRecord rebuild(
          void Function(MedicalUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MedicalUsersRecordBuilder toBuilder() =>
      new MedicalUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MedicalUsersRecord &&
        displayName == other.displayName &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        phoneNumber == other.phoneNumber &&
        medicalCode == other.medicalCode &&
        medicalSpeciality == other.medicalSpeciality &&
        currentAddress == other.currentAddress &&
        fieldInterests == other.fieldInterests &&
        createdTime == other.createdTime &&
        iamDoctor == other.iamDoctor &&
        uid == other.uid &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, displayName.hashCode),
                                                email.hashCode),
                                            photoUrl.hashCode),
                                        phoneNumber.hashCode),
                                    medicalCode.hashCode),
                                medicalSpeciality.hashCode),
                            currentAddress.hashCode),
                        fieldInterests.hashCode),
                    createdTime.hashCode),
                iamDoctor.hashCode),
            uid.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MedicalUsersRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('phoneNumber', phoneNumber)
          ..add('medicalCode', medicalCode)
          ..add('medicalSpeciality', medicalSpeciality)
          ..add('currentAddress', currentAddress)
          ..add('fieldInterests', fieldInterests)
          ..add('createdTime', createdTime)
          ..add('iamDoctor', iamDoctor)
          ..add('uid', uid)
          ..add('reference', reference))
        .toString();
  }
}

class MedicalUsersRecordBuilder
    implements Builder<MedicalUsersRecord, MedicalUsersRecordBuilder> {
  _$MedicalUsersRecord _$v;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _medicalCode;
  String get medicalCode => _$this._medicalCode;
  set medicalCode(String medicalCode) => _$this._medicalCode = medicalCode;

  String _medicalSpeciality;
  String get medicalSpeciality => _$this._medicalSpeciality;
  set medicalSpeciality(String medicalSpeciality) =>
      _$this._medicalSpeciality = medicalSpeciality;

  String _currentAddress;
  String get currentAddress => _$this._currentAddress;
  set currentAddress(String currentAddress) =>
      _$this._currentAddress = currentAddress;

  String _fieldInterests;
  String get fieldInterests => _$this._fieldInterests;
  set fieldInterests(String fieldInterests) =>
      _$this._fieldInterests = fieldInterests;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  bool _iamDoctor;
  bool get iamDoctor => _$this._iamDoctor;
  set iamDoctor(bool iamDoctor) => _$this._iamDoctor = iamDoctor;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  MedicalUsersRecordBuilder() {
    MedicalUsersRecord._initializeBuilder(this);
  }

  MedicalUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _phoneNumber = $v.phoneNumber;
      _medicalCode = $v.medicalCode;
      _medicalSpeciality = $v.medicalSpeciality;
      _currentAddress = $v.currentAddress;
      _fieldInterests = $v.fieldInterests;
      _createdTime = $v.createdTime;
      _iamDoctor = $v.iamDoctor;
      _uid = $v.uid;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MedicalUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MedicalUsersRecord;
  }

  @override
  void update(void Function(MedicalUsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MedicalUsersRecord build() {
    final _$result = _$v ??
        new _$MedicalUsersRecord._(
            displayName: displayName,
            email: email,
            photoUrl: photoUrl,
            phoneNumber: phoneNumber,
            medicalCode: medicalCode,
            medicalSpeciality: medicalSpeciality,
            currentAddress: currentAddress,
            fieldInterests: fieldInterests,
            createdTime: createdTime,
            iamDoctor: iamDoctor,
            uid: uid,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
