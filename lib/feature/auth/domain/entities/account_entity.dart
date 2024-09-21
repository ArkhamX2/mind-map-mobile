import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mind_map/feature/auth/data/models/user_model/account_model.dart';

part 'account_entity.freezed.dart';

@freezed
class AccountEntity with _$AccountEntity {
  const factory AccountEntity(
      {required int id,
      required String? name,
      required String? surname,
      required String? patronymic,}) = _AccountEntity;

  factory AccountEntity.fromModel(AccountModel model) => AccountEntity(
      id: model.id,
      name: model.name,
      surname: model.surname,
      patronymic: model.patronymic,);
}
