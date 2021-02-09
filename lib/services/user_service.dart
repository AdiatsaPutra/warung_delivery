part of 'services.dart';

class UserServices {
  // Sign In User
  static Future<ApiReturnValue<User>> signIn(
      String email, String password) async {
    // Simulasi User Sign In
    await Future.delayed(Duration(seconds: 3));

    return ApiReturnValue(value: mockUser, message: 'Berhasil Masuk');
    // return ApiReturnValue(message: 'Password Anda Salah!');
  }
}
