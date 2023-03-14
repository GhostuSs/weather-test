part of 'auth_cubit.dart';

class AuthState extends Equatable {
  AuthState({
    this.email = '',
    this.pass = '',
    this.obscurePass = true,
    this.isAuthorizing = false,
    this.emailError = null,
    this.passError = null,
  });

  String email;
  String pass;
  String? emailError;
  String? passError;
  bool obscurePass;
  bool isAuthorizing;

  AuthState copyWith(
      {String? email,
      String? pass,
      bool? obscurePass,
      bool? isAuthorizing,
      String? passErr,
      String? emailErr}) {
    return AuthState(
        email: email ?? this.email,
        pass: pass ?? this.pass,
        emailError: emailErr ?? this.emailError,
        passError: passErr ?? this.passError,
        isAuthorizing: isAuthorizing ?? this.isAuthorizing,
        obscurePass: obscurePass ?? this.obscurePass);
  }

  @override
  List<Object?> get props =>
      [email, pass, obscurePass, isAuthorizing, passError, emailError];
}
