// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AccountModelAdapter extends TypeAdapter<_$AccountModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$AccountModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$AccountModelImpl(
      id: fields[0] as int,
      name: fields[1] as String?,
      surname: fields[2] as String?,
      patronymic: fields[3] as String?,
      identityId: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$AccountModelImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.surname)
      ..writeByte(3)
      ..write(obj.patronymic)
      ..writeByte(4)
      ..write(obj.identityId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountModelImpl _$$AccountModelImplFromJson(Map<String, dynamic> json) =>
    _$AccountModelImpl(
      id: (json['Id'] as num).toInt(),
      name: json['Name'] as String?,
      surname: json['Surname'] as String?,
      patronymic: json['Patronymic'] as String?,
      identityId: json['IdentityId'] as String?,
    );

Map<String, dynamic> _$$AccountModelImplToJson(_$AccountModelImpl instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'Name': instance.name,
      'Surname': instance.surname,
      'Patronymic': instance.patronymic,
      'IdentityId': instance.identityId,
    };
