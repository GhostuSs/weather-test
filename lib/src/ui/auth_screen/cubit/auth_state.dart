part of 'auth_cubit.dart';

class AuthState extends Equatable {
  AuthState(
      {this.email = '',
      this.pass = '',
      this.obscurePass = true,
      this.isAuthorizing = false});
  String email;
  String pass;
  bool obscurePass;
  bool isAuthorizing;

  AuthState copyWith({
    String? email,
    String? pass,
    bool? obscurePass,
    bool? isAuthorizing,
  }) {
    return AuthState(
        email: email ?? this.email,
        pass: pass ?? this.pass,
        isAuthorizing: isAuthorizing ?? this.isAuthorizing,
        obscurePass: obscurePass ?? this.obscurePass);
  }

  @override
  List<Object?> get props => [
        email,
        pass,
        obscurePass,
        isAuthorizing,
      ];
}
