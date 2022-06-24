// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_list_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ToDoListRecord> _$toDoListRecordSerializer =
    new _$ToDoListRecordSerializer();

class _$ToDoListRecordSerializer
    implements StructuredSerializer<ToDoListRecord> {
  @override
  final Iterable<Type> types = const [ToDoListRecord, _$ToDoListRecord];
  @override
  final String wireName = 'ToDoListRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ToDoListRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.displayDoctor;
    if (value != null) {
      result
        ..add('display_doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayUser;
    if (value != null) {
      result
        ..add('display_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.displaySpeciality;
    if (value != null) {
      result
        ..add('display_speciality')
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
  ToDoListRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ToDoListRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'display_doctor':
          result.displayDoctor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_user':
          result.displayUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'display_speciality':
          result.displaySpeciality = serializers.deserialize(value,
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

class _$ToDoListRecord extends ToDoListRecord {
  @override
  final String displayDoctor;
  @override
  final String displayUser;
  @override
  final DateTime time;
  @override
  final String displaySpeciality;
  @override
  final DocumentReference<Object> reference;

  factory _$ToDoListRecord([void Function(ToDoListRecordBuilder) updates]) =>
      (new ToDoListRecordBuilder()..update(updates)).build();

  _$ToDoListRecord._(
      {this.displayDoctor,
      this.displayUser,
      this.time,
      this.displaySpeciality,
      this.reference})
      : super._();

  @override
  ToDoListRecord rebuild(void Function(ToDoListRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ToDoListRecordBuilder toBuilder() =>
      new ToDoListRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ToDoListRecord &&
        displayDoctor == other.displayDoctor &&
        displayUser == other.displayUser &&
        time == other.time &&
        displaySpeciality == other.displaySpeciality &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, displayDoctor.hashCode), displayUser.hashCode),
                time.hashCode),
            displaySpeciality.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ToDoListRecord')
          ..add('displayDoctor', displayDoctor)
          ..add('displayUser', displayUser)
          ..add('time', time)
          ..add('displaySpeciality', displaySpeciality)
          ..add('reference', reference))
        .toString();
  }
}

class ToDoListRecordBuilder
    implements Builder<ToDoListRecord, ToDoListRecordBuilder> {
  _$ToDoListRecord _$v;

  String _displayDoctor;
  String get displayDoctor => _$this._displayDoctor;
  set displayDoctor(String displayDoctor) =>
      _$this._displayDoctor = displayDoctor;

  String _displayUser;
  String get displayUser => _$this._displayUser;
  set displayUser(String displayUser) => _$this._displayUser = displayUser;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  String _displaySpeciality;
  String get displaySpeciality => _$this._displaySpeciality;
  set displaySpeciality(String displaySpeciality) =>
      _$this._displaySpeciality = displaySpeciality;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ToDoListRecordBuilder() {
    ToDoListRecord._initializeBuilder(this);
  }

  ToDoListRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayDoctor = $v.displayDoctor;
      _displayUser = $v.displayUser;
      _time = $v.time;
      _displaySpeciality = $v.displaySpeciality;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ToDoListRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ToDoListRecord;
  }

  @override
  void update(void Function(ToDoListRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ToDoListRecord build() {
    final _$result = _$v ??
        new _$ToDoListRecord._(
            displayDoctor: displayDoctor,
            displayUser: displayUser,
            time: time,
            displaySpeciality: displaySpeciality,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
