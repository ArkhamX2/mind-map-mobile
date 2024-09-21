import 'package:dartz/dartz.dart';
import 'package:mind_map/core/data/error/failure.dart';
import 'package:mind_map/core/data/usecases/usecase.dart';
import 'package:mind_map/feature/auth/data/models/token_model.dart';
import 'package:mind_map/feature/auth/domain/repositories/auth_repository.dart';

class GetToken extends Usecase<TokenModel,void>{
  final AuthRepository authRepository;

  GetToken({required this.authRepository});

  @override
  Future<Either<Failure,TokenModel>> call(void request) async {
    return await authRepository.getToken();
  }
}
