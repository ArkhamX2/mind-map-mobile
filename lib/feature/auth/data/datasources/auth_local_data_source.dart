import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:mind_map/core/data/error/exception.dart';
import 'package:mind_map/feature/auth/data/models/security_response_model.dart';
import 'package:mind_map/feature/auth/data/models/token_model.dart';
import 'package:mind_map/feature/auth/data/models/user_model/account_model.dart';

abstract class AuthLocalDataSource {
  Future<TokenModel> loadToken();
  Future<void> updateToken(TokenModel token);
  Future<void> add(SecurityResponseModel remoteLoad);
  Future<void> logout();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  FlutterSecureStorage tokenStorage;
  Box<AccountModel> userBox;

  AuthLocalDataSourceImpl({required this.tokenStorage, required this.userBox});

  @override
  Future<void> add(SecurityResponseModel response) async {
    try {
      await tokenStorage.write(key: 'jwt_access_token', value: response.token);
      if (userBox.isNotEmpty) {
        final alreadyExists = userBox.values.firstWhere(
          (element) => element.id == response.user.id,
        );
        // ignore: unrelated_type_equality_checks
      if (alreadyExists == -1) {
        try {
          userBox.add(
            AccountModel(
              id: response.user.id,
              identityId: response.user.identityId,
              name: response.user.name,
              patronymic: response.user.patronymic,
              surname: response.user.surname,
            ),
          );
        } on Exception {
          throw CacheException();
        }
      }
      }
      
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> updateToken(TokenModel token) async {
    try {
      await tokenStorage.write(key: 'jwt_access_token', value: token.token);
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<TokenModel> loadToken() async {
    try {
      final token = await tokenStorage.read(key: 'jwt_access_token');
      return TokenModel(
        token: token ?? "",
      );
    } catch (e) {
      throw CacheException();
    }
  }

  @override
  Future<void> logout() async {
    await tokenStorage.delete(key: 'jwt_access_token');
    userBox.clear();
  }
}
