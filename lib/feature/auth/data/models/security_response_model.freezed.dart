// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'security_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SecurityResponseModel _$SecurityResponseModelFromJson(
    Map<String, dynamic> json) {
  return _SecurityResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SecurityResponseModel {
  @JsonKey(name: 'Account')
  AccountModel get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'Token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityResponseModelCopyWith<SecurityResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityResponseModelCopyWith<$Res> {
  factory $SecurityResponseModelCopyWith(SecurityResponseModel value,
          $Res Function(SecurityResponseModel) then) =
      _$SecurityResponseModelCopyWithImpl<$Res, SecurityResponseModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Account') AccountModel user,
      @JsonKey(name: 'Token') String token});

  $AccountModelCopyWith<$Res> get user;
}

/// @nodoc
class _$SecurityResponseModelCopyWithImpl<$Res,
        $Val extends SecurityResponseModel>
    implements $SecurityResponseModelCopyWith<$Res> {
  _$SecurityResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AccountModelCopyWith<$Res> get user {
    return $AccountModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SecurityResponseModelImplCopyWith<$Res>
    implements $SecurityResponseModelCopyWith<$Res> {
  factory _$$SecurityResponseModelImplCopyWith(
          _$SecurityResponseModelImpl value,
          $Res Function(_$SecurityResponseModelImpl) then) =
      __$$SecurityResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Account') AccountModel user,
      @JsonKey(name: 'Token') String token});

  @override
  $AccountModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$SecurityResponseModelImplCopyWithImpl<$Res>
    extends _$SecurityResponseModelCopyWithImpl<$Res,
        _$SecurityResponseModelImpl>
    implements _$$SecurityResponseModelImplCopyWith<$Res> {
  __$$SecurityResponseModelImplCopyWithImpl(_$SecurityResponseModelImpl _value,
      $Res Function(_$SecurityResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? token = null,
  }) {
    return _then(_$SecurityResponseModelImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AccountModel,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecurityResponseModelImpl implements _SecurityResponseModel {
  const _$SecurityResponseModelImpl(
      {@JsonKey(name: 'Account') required this.user,
      @JsonKey(name: 'Token') required this.token});

  factory _$SecurityResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecurityResponseModelImplFromJson(json);

  @override
  @JsonKey(name: 'Account')
  final AccountModel user;
  @override
  @JsonKey(name: 'Token')
  final String token;

  @override
  String toString() {
    return 'SecurityResponseModel(user: $user, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecurityResponseModelImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SecurityResponseModelImplCopyWith<_$SecurityResponseModelImpl>
      get copyWith => __$$SecurityResponseModelImplCopyWithImpl<
          _$SecurityResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SecurityResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SecurityResponseModel implements SecurityResponseModel {
  const factory _SecurityResponseModel(
          {@JsonKey(name: 'Account') required final AccountModel user,
          @JsonKey(name: 'Token') required final String token}) =
      _$SecurityResponseModelImpl;

  factory _SecurityResponseModel.fromJson(Map<String, dynamic> json) =
      _$SecurityResponseModelImpl.fromJson;

  @override
  @JsonKey(name: 'Account')
  AccountModel get user;
  @override
  @JsonKey(name: 'Token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$SecurityResponseModelImplCopyWith<_$SecurityResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
