import 'package:dartz/dartz.dart';
import 'package:mind_map/core/data/error/failure.dart';
import 'package:mind_map/core/data/usecases/usecase.dart';
import 'package:mind_map/feature/auth/data/models/security_request_model.dart';
import 'package:mind_map/feature/auth/data/models/security_response_model.dart';
import 'package:mind_map/feature/auth/domain/repositories/auth_repository.dart';

class Auth extends Usecase<SecurityResponseModel,SecurityRequestModel>{
  final AuthRepository authRepository;

  Auth({required this.authRepository});

  @override
  Future<Either<Failure,SecurityResponseModel>> call(SecurityRequestModel request) async{
    return await authRepository.auth(request);
  }
}
