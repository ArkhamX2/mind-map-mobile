// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TokenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TokenModel token) authorized,
    required TResult Function(String message) fail,
    required TResult Function(TokenModel token) tokenSuccess,
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TokenModel token)? authorized,
    TResult? Function(String message)? fail,
    TResult? Function(TokenModel token)? tokenSuccess,
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TokenModel token)? authorized,
    TResult Function(String message)? fail,
    TResult Function(TokenModel token)? tokenSuccess,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Fail value) fail,
    required TResult Function(_TokenSuccess value) tokenSuccess,
    required TResult Function(_Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_TokenSuccess value)? tokenSuccess,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Fail value)? fail,
    TResult Function(_TokenSuccess value)? tokenSuccess,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenStateCopyWith<$Res> {
  factory $TokenStateCopyWith(
          TokenState value, $Res Function(TokenState) then) =
      _$TokenStateCopyWithImpl<$Res, TokenState>;
}

/// @nodoc
class _$TokenStateCopyWithImpl<$Res, $Val extends TokenState>
    implements $TokenStateCopyWith<$Res> {
  _$TokenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TokenState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TokenModel token) authorized,
    required TResult Function(String message) fail,
    required TResult Function(TokenModel token) tokenSuccess,
    required TResult Function() unauthorized,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TokenModel token)? authorized,
    TResult? Function(String message)? fail,
    TResult? Function(TokenModel token)? tokenSuccess,
    TResult? Function()? unauthorized,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TokenModel token)? authorized,
    TResult Function(String message)? fail,
    TResult Function(TokenModel token)? tokenSuccess,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Fail value) fail,
    required TResult Function(_TokenSuccess value) tokenSuccess,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_TokenSuccess value)? tokenSuccess,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Fail value)? fail,
    TResult Function(_TokenSuccess value)? tokenSuccess,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TokenState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$AuthorizedImplCopyWith<$Res> {
  factory _$$AuthorizedImplCopyWith(
          _$AuthorizedImpl value, $Res Function(_$AuthorizedImpl) then) =
      __$$AuthorizedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenModel token});

  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class __$$AuthorizedImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$AuthorizedImpl>
    implements _$$AuthorizedImplCopyWith<$Res> {
  __$$AuthorizedImplCopyWithImpl(
      _$AuthorizedImpl _value, $Res Function(_$AuthorizedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$AuthorizedImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenModelCopyWith<$Res> get token {
    return $TokenModelCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$AuthorizedImpl implements _Authorized {
  const _$AuthorizedImpl(this.token);

  @override
  final TokenModel token;

  @override
  String toString() {
    return 'TokenState.authorized(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorizedImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      __$$AuthorizedImplCopyWithImpl<_$AuthorizedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TokenModel token) authorized,
    required TResult Function(String message) fail,
    required TResult Function(TokenModel token) tokenSuccess,
    required TResult Function() unauthorized,
  }) {
    return authorized(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TokenModel token)? authorized,
    TResult? Function(String message)? fail,
    TResult? Function(TokenModel token)? tokenSuccess,
    TResult? Function()? unauthorized,
  }) {
    return authorized?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TokenModel token)? authorized,
    TResult Function(String message)? fail,
    TResult Function(TokenModel token)? tokenSuccess,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Fail value) fail,
    required TResult Function(_TokenSuccess value) tokenSuccess,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_TokenSuccess value)? tokenSuccess,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Fail value)? fail,
    TResult Function(_TokenSuccess value)? tokenSuccess,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class _Authorized implements TokenState {
  const factory _Authorized(final TokenModel token) = _$AuthorizedImpl;

  TokenModel get token;
  @JsonKey(ignore: true)
  _$$AuthorizedImplCopyWith<_$AuthorizedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailImplCopyWith<$Res> {
  factory _$$FailImplCopyWith(
          _$FailImpl value, $Res Function(_$FailImpl) then) =
      __$$FailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$FailImpl>
    implements _$$FailImplCopyWith<$Res> {
  __$$FailImplCopyWithImpl(_$FailImpl _value, $Res Function(_$FailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailImpl implements _Fail {
  const _$FailImpl([this.message = "Unknown error"]);

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'TokenState.fail(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      __$$FailImplCopyWithImpl<_$FailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TokenModel token) authorized,
    required TResult Function(String message) fail,
    required TResult Function(TokenModel token) tokenSuccess,
    required TResult Function() unauthorized,
  }) {
    return fail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TokenModel token)? authorized,
    TResult? Function(String message)? fail,
    TResult? Function(TokenModel token)? tokenSuccess,
    TResult? Function()? unauthorized,
  }) {
    return fail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TokenModel token)? authorized,
    TResult Function(String message)? fail,
    TResult Function(TokenModel token)? tokenSuccess,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Fail value) fail,
    required TResult Function(_TokenSuccess value) tokenSuccess,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return fail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_TokenSuccess value)? tokenSuccess,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return fail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Fail value)? fail,
    TResult Function(_TokenSuccess value)? tokenSuccess,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (fail != null) {
      return fail(this);
    }
    return orElse();
  }
}

abstract class _Fail implements TokenState {
  const factory _Fail([final String message]) = _$FailImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailImplCopyWith<_$FailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenSuccessImplCopyWith<$Res> {
  factory _$$TokenSuccessImplCopyWith(
          _$TokenSuccessImpl value, $Res Function(_$TokenSuccessImpl) then) =
      __$$TokenSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenModel token});

  $TokenModelCopyWith<$Res> get token;
}

/// @nodoc
class __$$TokenSuccessImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$TokenSuccessImpl>
    implements _$$TokenSuccessImplCopyWith<$Res> {
  __$$TokenSuccessImplCopyWithImpl(
      _$TokenSuccessImpl _value, $Res Function(_$TokenSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TokenSuccessImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenModelCopyWith<$Res> get token {
    return $TokenModelCopyWith<$Res>(_value.token, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$TokenSuccessImpl implements _TokenSuccess {
  const _$TokenSuccessImpl(this.token);

  @override
  final TokenModel token;

  @override
  String toString() {
    return 'TokenState.tokenSuccess(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenSuccessImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenSuccessImplCopyWith<_$TokenSuccessImpl> get copyWith =>
      __$$TokenSuccessImplCopyWithImpl<_$TokenSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TokenModel token) authorized,
    required TResult Function(String message) fail,
    required TResult Function(TokenModel token) tokenSuccess,
    required TResult Function() unauthorized,
  }) {
    return tokenSuccess(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TokenModel token)? authorized,
    TResult? Function(String message)? fail,
    TResult? Function(TokenModel token)? tokenSuccess,
    TResult? Function()? unauthorized,
  }) {
    return tokenSuccess?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TokenModel token)? authorized,
    TResult Function(String message)? fail,
    TResult Function(TokenModel token)? tokenSuccess,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (tokenSuccess != null) {
      return tokenSuccess(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Fail value) fail,
    required TResult Function(_TokenSuccess value) tokenSuccess,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return tokenSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_TokenSuccess value)? tokenSuccess,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return tokenSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Fail value)? fail,
    TResult Function(_TokenSuccess value)? tokenSuccess,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (tokenSuccess != null) {
      return tokenSuccess(this);
    }
    return orElse();
  }
}

abstract class _TokenSuccess implements TokenState {
  const factory _TokenSuccess(final TokenModel token) = _$TokenSuccessImpl;

  TokenModel get token;
  @JsonKey(ignore: true)
  _$$TokenSuccessImplCopyWith<_$TokenSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$TokenStateCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl();

  @override
  String toString() {
    return 'TokenState.unauthorized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(TokenModel token) authorized,
    required TResult Function(String message) fail,
    required TResult Function(TokenModel token) tokenSuccess,
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(TokenModel token)? authorized,
    TResult? Function(String message)? fail,
    TResult? Function(TokenModel token)? tokenSuccess,
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(TokenModel token)? authorized,
    TResult Function(String message)? fail,
    TResult Function(TokenModel token)? tokenSuccess,
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authorized value) authorized,
    required TResult Function(_Fail value) fail,
    required TResult Function(_TokenSuccess value) tokenSuccess,
    required TResult Function(_Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authorized value)? authorized,
    TResult? Function(_Fail value)? fail,
    TResult? Function(_TokenSuccess value)? tokenSuccess,
    TResult? Function(_Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authorized value)? authorized,
    TResult Function(_Fail value)? fail,
    TResult Function(_TokenSuccess value)? tokenSuccess,
    TResult Function(_Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements TokenState {
  const factory _Unauthorized() = _$UnauthorizedImpl;
}
