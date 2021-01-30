part of 'services.dart';

class FoodService {
  // Get List Of Food
  static Future<ApiReturnValue<List<Food>>> getFood() async {
    // Simulasi Get Food
    await Future.delayed(Duration(seconds: 3));

    return ApiReturnValue(value: mockFoods, message: 'Berhasil Masuk');
  }
}
