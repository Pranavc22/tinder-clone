part of 'sign_up_bloc.dart';

@immutable
class SignUpState {
  final bool isEmailValid;
  final bool isPasswordValid;
  final bool isSubmitting;
  final bool isSuccess;
  final bool isFailure;

  bool get isFormValid => isEmailValid && isPasswordValid;

  SignUpState(
      {@required this.isEmailValid,
      @required this.isPasswordValid,
      @required this.isSubmitting,
      @required this.isSuccess,
      @required this.isFailure});

  //Initial State - Login Form
  factory SignUpState.empty() {
    return SignUpState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false);
  }

  //Loading State
  factory SignUpState.loading() {
    return SignUpState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitting: true,
        isSuccess: false,
        isFailure: false);
  }

  //Success State
  factory SignUpState.success() {
    return SignUpState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: true,
        isFailure: false);
  }

  //Failure State
  factory SignUpState.failure() {
    return SignUpState(
        isEmailValid: true,
        isPasswordValid: true,
        isSubmitting: false,
        isSuccess: false,
        isFailure: true);
  }
  //Updates status.
  SignUpState update({
    bool isEmailValid,
    bool isPasswordValid,
  }) {
    return copyWith(
        isEmailValid: isEmailValid,
        isPasswordValid: isPasswordValid,
        isSubmitting: false,
        isSuccess: false,
        isFailure: false);
  }

  //Copies the latest status to the original variable values.
  SignUpState copyWith(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isSubmitEnabled,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure}) {
    return SignUpState(
        isEmailValid: isEmailValid ?? this.isEmailValid,
        isPasswordValid: isPasswordValid ?? this.isPasswordValid,
        isSubmitting: isSubmitting ?? this.isSubmitting,
        isSuccess: isSuccess ?? this.isSuccess,
        isFailure: isFailure ?? this.isFailure);
  }
}
