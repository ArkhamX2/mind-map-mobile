// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccountEntity {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  String? get patronymic => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountEntityCopyWith<AccountEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountEntityCopyWith<$Res> {
  factory $AccountEntityCopyWith(
          AccountEntity value, $Res Function(AccountEntity) then) =
      _$AccountEntityCopyWithImpl<$Res, AccountEntity>;
  @useResult
  $Res call({int id, String? name, String? surname, String? patronymic});
}

/// @nodoc
class _$AccountEntityCopyWithImpl<$Res, $Val extends AccountEntity>
    implements $AccountEntityCopyWith<$Res> {
  _$AccountEntityCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccountEntityImplCopyWith<$Res>
    implements $AccountEntityCopyWith<$Res> {
  factory _$$AccountEntityImplCopyWith(
          _$AccountEntityImpl value, $Res Function(_$AccountEntityImpl) then) =
      __$$AccountEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? name, String? surname, String? patronymic});
}

/// @nodoc
class __$$AccountEntityImplCopyWithImpl<$Res>
    extends _$AccountEntityCopyWithImpl<$Res, _$AccountEntityImpl>
    implements _$$AccountEntityImplCopyWith<$Res> {
  __$$AccountEntityImplCopyWithImpl(
      _$AccountEntityImpl _value, $Res Function(_$AccountEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? patronymic = freezed,
  }) {
    return _then(_$AccountEntityImpl(
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
    ));
  }
}

/// @nodoc

class _$AccountEntityImpl implements _AccountEntity {
  const _$AccountEntityImpl(
      {required this.id,
      required this.name,
      required this.surname,
      required this.patronymic});

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? surname;
  @override
  final String? patronymic;

  @override
  String toString() {
    return 'AccountEntity(id: $id, name: $name, surname: $surname, patronymic: $patronymic)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, surname, patronymic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountEntityImplCopyWith<_$AccountEntityImpl> get copyWith =>
      __$$AccountEntityImplCopyWithImpl<_$AccountEntityImpl>(this, _$identity);
}

abstract class _AccountEntity implements AccountEntity {
  const factory _AccountEntity(
      {required final int id,
      required final String? name,
      required final String? surname,
      required final String? patronymic}) = _$AccountEntityImpl;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get surname;
  @override
  String? get patronymic;
  @override
  @JsonKey(ignore: true)
  _$$AccountEntityImplCopyWith<_$AccountEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
