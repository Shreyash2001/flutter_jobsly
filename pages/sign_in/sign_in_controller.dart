import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/pages/sign_in/bloc/sign_in_bloc.dart';

class SignInController {
  final BuildContext context;
  SignInController({required this.context});

  Future<void> handleSignIn(String type) async{
    try {
      if(type == 'Email') {
        final State = context.read<SignInBloc>().state;
        String email = State.email;
        String password = State.password;

        if(email.isEmpty) {

        } else {
          print('email is $email');
        }
        if(password.isEmpty) {

        } else {
          print('the password is $password');
        }

      } else {

      }
    } catch (e) {
      print(e.toString());
    }
  }
}
