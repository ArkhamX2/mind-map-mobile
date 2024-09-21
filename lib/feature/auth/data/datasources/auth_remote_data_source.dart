import 'package:http/http.dart' as http;
import 'package:mind_map/core/data/datasource/datasource.dart';
import 'package:mind_map/core/data/error/exception.dart';
import 'package:mind_map/feature/auth/data/models/security_request_model.dart';
import 'package:mind_map/feature/auth/data/models/security_response_model.dart';
import 'package:mind_map/feature/auth/data/models/token_model.dart';
import 'package:mind_map/feature/auth/data/models/user_model/account_model.dart';

class AuthRemoteDataSource
    implements RemoteDataSource<SecurityRequestModel, SecurityResponseModel> {
  final http.Client client;

  AuthRemoteDataSource({required this.client});

  Future<SecurityResponseModel> auth(SecurityRequestModel request) async {
    try {
      //   final response = await client.get(
      //   Uri.parse('$BASE_URL/plants/test'),
      // );
      // final response = await client.post(
      //   Uri.parse('$BASE_URL/security/login'),
      //   body: json.encode(request.toJson()),
      //   headers: {
      //     'Content-type': 'application/json; charset=UTF-8',
      //   },
      // );
      // if (response.statusCode == 200) {
      //   final decoded = json.decode(response.body) as Map<String, dynamic>;
      //   final responseModel = SecurityResponseModel.fromJson(decoded);
      //   return responseModel;
      // } else {
      //   throw ServerException();
      // }

      return SecurityResponseModel(
        user: AccountModel(
          id: 0,
          name: "Мявка",
          surname: "Мявкин",
          patronymic: null,
          identityId: null,
        ),
        token: "137137137137137137",
      );
    } catch (e) {
      throw ServerException();
    }
  }

  Future<TokenModel> refreshToken() async {
    try {
      // final response = await client.post(
      //   Uri.parse('http://88.210.3.137/api/token/refresh'),
      //   headers: {
      //     'Content-type': 'application/json; charset=UTF-8',
      //   },
      // );
      // if (response.statusCode == 200) {
      //   final decoded = json.decode(response.body) as Map<String, dynamic>;
      //   final responseModel = TokenModel.fromJson(decoded);
      //   return responseModel;
      // } else {
      //   throw ServerException();
      // }

      return const TokenModel(
        token: "137137137137137137",
      );
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<SecurityRequestModel> load(SecurityResponseModel request) {
    // TODO: implement load
    throw UnimplementedError();
  }
  
  @override
  Future<void> upload(SecurityRequestModel remoteLoad) {
    // TODO: implement upload
    throw UnimplementedError();
  }
}
