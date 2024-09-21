import 'package:dartz/dartz.dart';
import 'package:mind_map/core/data/error/failure.dart';
import 'package:mind_map/core/data/usecases/usecase.dart';
import 'package:mind_map/feature/auth/domain/repositories/auth_repository.dart';

class Logout extends Usecase<void,void>{
  final AuthRepository authRepository;

  Logout({required this.authRepository});

  @override
  Future<Either<Failure,void>> call(void request) async {
    return await authRepository.logout();
  }
}
