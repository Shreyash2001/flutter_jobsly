import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/pages/bloc/welcome_blocs.dart';
import 'package:flutter_demo/pages/get_started.dart';
import 'package:flutter_demo/pages/sign_in/bloc/sign_in_bloc.dart';
import 'package:flutter_demo/pages/sign_in/sign_in.dart';
import 'package:flutter_demo/pages/sign_up/bloc/sign_up_bloc.dart';
import 'package:flutter_demo/pages/sign_up/sign_up.dart';
import 'package:flutter_demo/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WelcomeBloc(),
        ),
        BlocProvider(
          create: (context) => SignInBloc(),
        ),
        BlocProvider(
          create: (context) => SignUpBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "getStarted",
        routes: {
          // "myHomePage": (context) => MyHomePage()
          "mySignIn": (context) => const SignInPage(),
          "register": (context) => const SignUpPage(),
          "getStarted": (context) => const GetStarted(),
        },
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: const WelcomeScreen(),
      ),
    );
  }
}
