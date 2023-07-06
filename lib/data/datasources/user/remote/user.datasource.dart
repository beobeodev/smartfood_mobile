import 'package:smarthealthy/common/constants/endpoints.dart';
import 'package:smarthealthy/common/helpers/dio.helper.dart';
import 'package:smarthealthy/data/dtos/auth/login_by_email_request.dto.dart';
import 'package:smarthealthy/data/dtos/auth/login_response.dto.dart';
import 'package:smarthealthy/data/dtos/auth/register_request.dto.dart';
import 'package:injectable/injectable.dart';
import 'package:smarthealthy/data/dtos/update_profile.dto.dart';
import 'package:smarthealthy/data/dtos/user_nutrition.dto.dart';
import 'package:smarthealthy/data/models/user.model.dart';

@lazySingleton
class UserRemoteDataSource {
  UserRemoteDataSource({required DioHelper dioHelper}) : _dioHelper = dioHelper;

  final DioHelper _dioHelper;

  Future<LoginResponseDTO> loginByEmail(LoginByEmailRequestDTO params) async {
    final HttpRequestResponse response = await _dioHelper.post(
      Endpoints.login,
      data: params.toJson(),
    );

    return LoginResponseDTO(
      accessToken: response.data['data']['accessToken'],
    );
  }

  Future<void> register(RegisterRequestDTO registerDto) async {
    await _dioHelper.post(Endpoints.register, data: registerDto.toJson());
  }

  Future<UserModel> getUserProfile() async {
    final HttpRequestResponse response = await _dioHelper.get(
      Endpoints.profile,
    );

    return UserModel.fromJson(response.data['data']);
  }

  Future<UserModel> updateNutrition(
    UpdateUserNutritionDTO userNutrition,
  ) async {
    final response = await _dioHelper.patch(
      Endpoints.updateNutrition,
      data: userNutrition.toJson(),
    );

    return UserModel.fromJson(response.data['data']);
  }

  Future<UserModel> updateProfile(UpdateProfileDTO dto) async {
    final response = await _dioHelper.patch(
      Endpoints.updateProfile,
      data: dto.toJson(),
    );

    return UserModel.fromJson(response.data['data']);
  }
}
