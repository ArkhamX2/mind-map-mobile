// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AccountModel _$AccountModelFromJson(Map<String, dynamic> json) {
  return _AccountModel.fromJson(json);
}

/// @nodoc
mixin _$AccountModel {
  @JsonKey(name: 'Id')
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Name')
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'Surname')
  @HiveField(2)
  String? get surname => throw _privateConstructorUsedError;
  @JsonKey(name: 'Patronymic')
  @HiveField(3)
  String? get patronymic => throw _privateConstructorUsedError;
  @JsonKey(name: 'IdentityId')
  @HiveField(4)
  String? get identityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountModelCopyWith<AccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountModelCopyWith<$Res> {
  factory $AccountModelCopyWith(
          AccountModel value, $Res Function(AccountModel) then) =
      _$AccountModelCopyWithImpl<$Res, AccountModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') @HiveField(0) int id,
      @JsonKey(name: 'Name') @HiveField(1) String? name,
      @JsonKey(name: 'Surname') @HiveField(2) String? surname,
      @JsonKey(name: 'Patronymic') @HiveField(3) String? patronymic,
      @JsonKey(name: 'IdentityId') @HiveField(4) String? identityId});
}

/// @nodoc
class _$AccountModelCopyWithImpl<$Res, $Val extends AccountModel>
    implements $AccountModelCopyWith<$Res> {
  _$AccountModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? identityId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      identityId: freezed == identityId
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountModelImplCopyWith<$Res>
    implements $AccountModelCopyWith<$Res> {
  factory _$$AccountModelImplCopyWith(
          _$AccountModelImpl value, $Res Function(_$AccountModelImpl) then) =
      __$$AccountModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') @HiveField(0) int id,
      @JsonKey(name: 'Name') @HiveField(1) String? name,
      @JsonKey(name: 'Surname') @HiveField(2) String? surname,
      @JsonKey(name: 'Patronymic') @HiveField(3) String? patronymic,
      @JsonKey(name: 'IdentityId') @HiveField(4) String? identityId});
}

/// @nodoc
class __$$AccountModelImplCopyWithImpl<$Res>
    extends _$AccountModelCopyWithImpl<$Res, _$AccountModelImpl>
    implements _$$AccountModelImplCopyWith<$Res> {
  __$$AccountModelImplCopyWithImpl(
      _$AccountModelImpl _value, $Res Function(_$AccountModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
    Object? identityId = freezed,
  }) {
    return _then(_$AccountModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      identityId: freezed == identityId
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0, adapterName: 'AccountModelAdapter')
class _$AccountModelImpl extends _AccountModel {
  _$AccountModelImpl(
      {@JsonKey(name: 'Id') @HiveField(0) required this.id,
      @JsonKey(name: 'Name') @HiveField(1) required this.name,
      @JsonKey(name: 'Surname') @HiveField(2) required this.surname,
      @JsonKey(name: 'Patronymic') @HiveField(3) required this.patronymic,
      @JsonKey(name: 'IdentityId') @HiveField(4) required this.identityId})
      : super._();

  factory _$AccountModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AccountModelImplFromJson(json);

  @override
  @JsonKey(name: 'Id')
  @HiveField(0)
  final int id;
  @override
  @JsonKey(name: 'Name')
  @HiveField(1)
  final String? name;
  @override
  @JsonKey(name: 'Surname')
  @HiveField(2)
  final String? surname;
  @override
  @JsonKey(name: 'Patronymic')
  @HiveField(3)
  final String? patronymic;
  @override
  @JsonKey(name: 'IdentityId')
  @HiveField(4)
  final String? identityId;

  @override
  String toString() {
    return 'AccountModel(id: $id, name: $name, surname: $surname, patronymic: $patronymic, identityId: $identityId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.identityId, identityId) ||
                other.identityId == identityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, surname, patronymic, identityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      __$$AccountModelImplCopyWithImpl<_$AccountModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AccountModelImplToJson(
      this,
    );
  }
}

abstract class _AccountModel extends AccountModel {
  factory _AccountModel(
      {@JsonKey(name: 'Id') @HiveField(0) required final int id,
      @JsonKey(name: 'Name') @HiveField(1) required final String? name,
      @JsonKey(name: 'Surname') @HiveField(2) required final String? surname,
      @JsonKey(name: 'Patronymic')
      @HiveField(3)
      required final String? patronymic,
      @JsonKey(name: 'IdentityId')
      @HiveField(4)
      required final String? identityId}) = _$AccountModelImpl;
  _AccountModel._() : super._();

  factory _AccountModel.fromJson(Map<String, dynamic> json) =
      _$AccountModelImpl.fromJson;

  @override
  @JsonKey(name: 'Id')
  @HiveField(0)
  int get id;
  @override
  @JsonKey(name: 'Name')
  @HiveField(1)
  String? get name;
  @override
  @JsonKey(name: 'Surname')
  @HiveField(2)
  String? get surname;
  @override
  @JsonKey(name: 'Patronymic')
  @HiveField(3)
  String? get patronymic;
  @override
  @JsonKey(name: 'IdentityId')
  @HiveField(4)
  String? get identityId;
  @override
  @JsonKey(ignore: true)
  _$$AccountModelImplCopyWith<_$AccountModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
