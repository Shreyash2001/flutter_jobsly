import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/pages/sign_up/bloc/sign_up_event.dart';
import 'package:flutter_demo/pages/sign_up/bloc/sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpState()) {
    on<UserNameEvent>(
      _usernameEvent,
    );

    on<EmailEvent>(
      _emailEvent,
    );

    on<PasswordEvent>(
      _passwordEvent,
    );
  }

  FutureOr<void> _usernameEvent(event, emit) {
    print(event.username);
    emit(
      state.register(username: event.username),
    );
  }

  FutureOr<void> _emailEvent(event, emit) {
    print(event.email);
    emit(
      state.register(email: event.email),
    );
  }

  FutureOr<void> _passwordEvent(event, emit) {
    print(event.password);
    emit(
      state.register(password: event.password),
    );
  }
}
