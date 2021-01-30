import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:warung_delivery/models/models.dart';
import 'package:warung_delivery/services/services.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
  Future<void> signIn(String email, String password) async {
    // Get User
    ApiReturnValue<User> result = await UserServices.signIn(email, password);

    // If There's Data
    if (result.value != null) {
      emit(UserLoaded(user: result.value));
      // If There's Error
    } else {
      emit(UserSignInFailed(message: result.message));
    }
  }
}
