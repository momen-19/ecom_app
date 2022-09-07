import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_field_state.freezed.dart';

@freezed
class TextFieldState with _$TextFieldState {
  const factory TextFieldState({
    @Default('') String value,
    @Default(true) bool enabled,
    String? errorMessage,
    required TextEditingController controller,
  }) = _TextFieldState;

  const TextFieldState._();

  factory TextFieldState.initial({String? value}) => TextFieldState(
      value: value ?? '', controller: TextEditingController(text: value));

  TextFieldState normal() => copyWith(errorMessage: null, enabled: true);

  TextFieldState error({String? message}) => copyWith(errorMessage: message);
}
