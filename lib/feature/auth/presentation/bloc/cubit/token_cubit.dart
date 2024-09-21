import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mind_map/feature/auth/data/models/token_model.dart';
import 'package:mind_map/feature/auth/domain/usecases/get_token.dart';
import 'package:mind_map/feature/auth/domain/usecases/logout.dart';

part 'token_cubit.freezed.dart';
part 'token_state.dart';

class TokenCubit extends Cubit<TokenState> {
  final GetToken getTokenUseCase;
  final Logout logoutUseCase;
  TokenModel token = const TokenModel(token: "");

  TokenCubit({
    required this.logoutUseCase,
    required this.getTokenUseCase,
  }) : super(const TokenState.initial());

  Future<void> logout() async {
    emit(const TokenState.initial());
    // ignore: void_checks
    final res = await logoutUseCase.call(() {});
    res.fold(
      (l) => TokenState.fail(l.message),
      (r) => emit(const TokenState.unauthorized()),
    );
  }

  Future<void> getToken() async {
    // ignore: void_checks
    final tokenRes = await getTokenUseCase.call(() {});
    tokenRes.fold((l) => emit(TokenState.fail(l.message)), (r) {
      token = r;
      emit(
        TokenState.tokenSuccess(token),
      );
    });
  }
}
