// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'account_model.freezed.dart';
part 'account_model.g.dart';

@freezed
class AccountModel extends HiveObject with _$AccountModel{

  @HiveType(typeId: 0, adapterName: 'AccountModelAdapter')
  factory AccountModel({
    @JsonKey(name: 'Id') @HiveField(0) required int id,
    @JsonKey(name: 'Name') @HiveField(1) required String? name,
    @JsonKey(name: 'Surname') @HiveField(2) required String? surname,
    @JsonKey(name: 'Patronymic') @HiveField(3) required String? patronymic,
    @JsonKey(name: 'IdentityId') @HiveField(4) required String? identityId,
  }) = _AccountModel;

  AccountModel._();


  factory AccountModel.fromJson(Map<String,dynamic> json) => _$AccountModelFromJson(json);
}
