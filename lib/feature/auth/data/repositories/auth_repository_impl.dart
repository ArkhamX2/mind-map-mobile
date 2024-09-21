import 'package:dartz/dartz.dart';
import 'package:mind_map/core/data/error/exception.dart';
import 'package:mind_map/core/data/error/failure.dart';
import 'package:mind_map/core/network/network_info.dart';
import 'package:mind_map/feature/auth/data/datasources/auth_local_data_source.dart';
import 'package:mind_map/feature/auth/data/datasources/auth_remote_data_source.dart';
import 'package:mind_map/feature/auth/data/models/security_request_model.dart';
import 'package:mind_map/feature/auth/data/models/security_response_model.dart';
import 'package:mind_map/feature/auth/data/models/token_model.dart';
import 'package:mind_map/feature/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, SecurityResponseModel>> auth(
    SecurityRequestModel request,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteAuth = await remoteDataSource.auth(request);
        localDataSource.add(remoteAuth);
        return Right(remoteAuth);
      } on ServerException {
        return const Left(ServerFailure(message: "Ошибка сервера"));
      }
    } else {
      return const Left(
        CacheFailure(message: "Отсутствует подключение к сети"),
      );
    }
  }

  @override
  Future<Either<Failure, TokenModel>> getToken() async {
    try {
      final token = await localDataSource.loadToken();
      if (token.token.isEmpty) throw CacheException();
      return Right(token);
    } on CacheException {
      return const Left(ServerFailure(message: "Ошибка сервера"));
    }
  }
  
  @override
  Future<Either<Failure, void>> logout() async {
    try {
      final token = await localDataSource.logout();
      return Right(token);
    } on CacheException {
      return const Left(ServerFailure(message: "Ошибка сервера"));
    }
  }
}
