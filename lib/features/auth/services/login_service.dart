import 'package:dio/dio.dart';

class LoginService {
  Future<String> register({
    required String email,
    required String password,
  }) async {
    try {
      final response = await Dio().post(
        'https://punchywood-us.backendless.app/api/users/register',
        data: {'email': email, 'password': password},
      );

      if (response.statusCode == 200) {
        return 'Registration successful';
      }
      return 'Registration failed';
    } on DioException catch (e) {
      return e.response?.data['message'] ?? 'Registration failed';
    }
  }
}
