// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SecurityResponseModelImpl _$$SecurityResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SecurityResponseModelImpl(
      user: AccountModel.fromJson(json['Account'] as Map<String, dynamic>),
      token: json['Token'] as String,
    );

Map<String, dynamic> _$$SecurityResponseModelImplToJson(
        _$SecurityResponseModelImpl instance) =>
    <String, dynamic>{
      'Account': instance.user,
      'Token': instance.token,
    };
