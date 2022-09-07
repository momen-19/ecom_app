import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_state.freezed.dart';

@freezed
class ButtonState with _$ButtonState {
  const factory ButtonState({
    @Default(true) bool enabled,
    @Default(false) bool error,
    @Default(false) bool loading,
    String? errorMessage,
  }) = _ButtonState;

  const ButtonState._();

  factory ButtonState.normal() => const ButtonState();

  factory ButtonState.disabled() => const ButtonState(enabled: false);
  factory ButtonState.loading() => const ButtonState(enabled: false, loading: true);

  factory ButtonState.error(String errorMessage) =>
      ButtonState(error: true, errorMessage: errorMessage);
}