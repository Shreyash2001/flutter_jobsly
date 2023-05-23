class SignUpState {
  final String username;
  final String email;
  final String password;

  SignUpState({this.username = '', this.email = '', this.password = ''});

  SignUpState register({String? username, String? email, String? password}) {
    return SignUpState(
      username: username ?? this.username,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
