part of 'food_cubit.dart';

abstract class FoodState extends Equatable {
  const FoodState();
}

class FoodInitial extends FoodState {
  @override
  List<Object> get props => [];
}

class FoodLoaded extends FoodState {
  final List<Food> foods;

  FoodLoaded({@required this.foods});

  @override
  List<Object> get props => [foods];
}

class FetchFoodFailed extends FoodState {
  final String message;

  FetchFoodFailed({this.message});

  @override
  List<Object> get props => [message];
}
