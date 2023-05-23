import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/pages/bloc/welcome_events.dart';

import 'bloc/welcome_blocs.dart';
import 'bloc/welcome_states.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WelcomeBloc, WelcomeState>(
        builder: (context, state) {
          if (state.retryNum == 0) {
            context.read<WelcomeBloc>().add(WelcomeEvent());
          }
          return SafeArea(
            child: Container(
              child: Column(
                children: [
                  Text('${state.retryNum}'),
                  TextButton(
                      onPressed: () {
                        // context.read<WelcomeBloc>().add(WelcomeEvent());
                      },
                      child: const Text('click'))
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _page(int index, BuildContext context, String title, String subtitle,
      String buttonName) {
    return Center(
      child: Column(
        children: [
          // SizedBox(
          //   width: 345,
          //   height: 345,
          //   child: Image.asset('assets/images/learn_image.png'),
          // ),
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.8,
            margin: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/images/learn_image.png'),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(30),
            child: Text(
              title,
              style: const TextStyle(fontSize: 30),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (index < 3) {
                pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.decelerate);
              } else {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("mySignIn", (route) => false);
              }
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              width: 325,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Center(child: Text(buttonName)),
            ),
          )
        ],
      ),
    );
  }
}
