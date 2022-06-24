// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TodosRecord> _$todosRecordSerializer = new _$TodosRecordSerializer();

class _$TodosRecordSerializer implements StructuredSerializer<TodosRecord> {
  @override
  final Iterable<Type> types = const [TodosRecord, _$TodosRecord];
  @override
  final String wireName = 'TodosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, TodosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
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
  TodosRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'medical_speciality':
          result.medicalSpeciality = serializers.deserialize(value,
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

class _$TodosRecord extends TodosRecord {
  @override
  final DateTime time;
  @override
  final String displayName;
  @override
  final String medicalSpeciality;
  @override
  final DocumentReference<Object> reference;

  factory _$TodosRecord([void Function(TodosRecordBuilder) updates]) =>
      (new TodosRecordBuilder()..update(updates)).build();

  _$TodosRecord._(
      {this.time, this.displayName, this.medicalSpeciality, this.reference})
      : super._();

  @override
  TodosRecord rebuild(void Function(TodosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodosRecordBuilder toBuilder() => new TodosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodosRecord &&
        time == other.time &&
        displayName == other.displayName &&
        medicalSpeciality == other.medicalSpeciality &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, time.hashCode), displayName.hashCode),
            medicalSpeciality.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TodosRecord')
          ..add('time', time)
          ..add('displayName', displayName)
          ..add('medicalSpeciality', medicalSpeciality)
          ..add('reference', reference))
        .toString();
  }
}

class TodosRecordBuilder implements Builder<TodosRecord, TodosRecordBuilder> {
  _$TodosRecord _$v;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _medicalSpeciality;
  String get medicalSpeciality => _$this._medicalSpeciality;
  set medicalSpeciality(String medicalSpeciality) =>
      _$this._medicalSpeciality = medicalSpeciality;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  TodosRecordBuilder() {
    TodosRecord._initializeBuilder(this);
  }

  TodosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _time = $v.time;
      _displayName = $v.displayName;
      _medicalSpeciality = $v.medicalSpeciality;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodosRecord;
  }

  @override
  void update(void Function(TodosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TodosRecord build() {
    final _$result = _$v ??
        new _$TodosRecord._(
            time: time,
            displayName: displayName,
            medicalSpeciality: medicalSpeciality,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
