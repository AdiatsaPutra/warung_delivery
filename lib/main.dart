import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warung_delivery/models/models.dart';
import 'package:warung_delivery/ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: PaymentPage(
      transaction: Transaction(food: mockFoods[0], user: mockUser, quantity: 3),
    ));
  }
}
