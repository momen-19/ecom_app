import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:posts_app/features/auth/models/user_model.dart';
import 'package:posts_app/features/auth/user_remote_data_source.dart';
import '../../states/button_state.dart';
import '../../states/text_field_state.dart';

part 'user_controller.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState(
      {required TextFieldState nameFieldState,
      required TextFieldState phoneFieldState,
      required TextFieldState emailFieldState,
      required TextFieldState passwordFieldState,
      required ButtonState registerButtonState,
      String? requestError
      // required String? error
      }) = _RegistrationState;

  const RegistrationState._();

  factory RegistrationState.initial() => RegistrationState(
      nameFieldState: TextFieldState.initial(),
      phoneFieldState: TextFieldState.initial(),
      passwordFieldState: TextFieldState.initial(),
      emailFieldState: TextFieldState.initial(),
      registerButtonState: ButtonState.normal());

  RegistrationState loading() => copyWith(
      requestError: null,
      registerButtonState: ButtonState.loading(),
      emailFieldState: emailFieldState.normal(),
      phoneFieldState: phoneFieldState.normal(),
      passwordFieldState: passwordFieldState.normal());

  RegistrationState error(String error) => copyWith(
        requestError: error,
        registerButtonState: ButtonState.normal(),
      );
}

class RegistrationController extends StateNotifier<RegistrationState> {
  RegistrationController(this._userRemoteDataSource)
      : super(RegistrationState.initial());
  final UserRemoteDataSource _userRemoteDataSource;

  // registration request
  void register(UserModel user) async {
    state = state.loading();
    final result = await _userRemoteDataSource.register(user);
    print(result.tosString());
  }
}

final registrationFormState = StateNotifierProvider.autoDispose<
        RegistrationController, RegistrationState>(
    (ref) => RegistrationController(ref.watch(userRemoteDataSource)));
