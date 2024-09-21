import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mind_map/feature/auth/data/models/token_model.dart';
import '../error/exception.dart';
import '../error/failure.dart';

Future<Either<Failure, TokenModel>> getTokenFromLocalStorage(
  FlutterSecureStorage storage,
) async {
  try {
    final token = await storage.read(key: 'jwt_access_token');
    if (token != null) {
      return Right(TokenModel(token: token,));
    } else {
      throw CacheException();
    }
  } on CacheException {
    return const Left(
      CacheFailure(message: "Ошибка локального хранилища данных"),
    );
  }
}
