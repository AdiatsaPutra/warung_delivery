import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:warung_delivery/models/models.dart';
import 'package:warung_delivery/services/services.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodInitial());

  Future<void> getFood() async {
    ApiReturnValue<List<Food>> results = await FoodService.getFood();

    if (results.value != null) {
      emit(FoodLoaded(foods: results.value));
    } else {
      emit(FetchFoodFailed(message: results.message));
    }
  }
}
