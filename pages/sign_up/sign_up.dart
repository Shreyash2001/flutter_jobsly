import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/pages/sign_in/widgets/sign_in_widget.dart';
import 'package:flutter_demo/pages/sign_up/bloc/sign_up_event.dart';
import 'package:flutter_demo/widgets/button_widget.dart';
import 'package:flutter_demo/widgets/custom_app_bar.dart';
import 'package:flutter_demo/widgets/textfield_widget.dart';

import 'bloc/sign_up_bloc.dart';
import 'bloc/sign_up_state.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _getUpperText(context),
          _getLowOpacityCard(),
          _getCard(),
        ],
      ),
    );
  }

  Widget _getCustomAppBar(BuildContext context) {
    return CustomAppBar(
      text: 'Already Have an Account?',
      buttonText: 'Sign In',
      onTap: () => Navigator.pushNamed(context, 'getStarted'),
    );
  }

  Widget _getUpperText(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF8E5AE2),
              const Color(0xFF8E5AE2).withOpacity(0.6)
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topLeft,
          ),
        ),
        child: Column(
          children: [
            _getCustomAppBar(context),
          ],
        ),
      ),
    );
  }

  Widget _getLowOpacityCard() {
    return Positioned(
      top: 140,
      left: 0,
      right: 0,
      bottom: 0,
      child: Card(
        color: Colors.white.withOpacity(0.4),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
    );
  }

  Widget _getCard() {
    return Positioned.fill(
      top: 150,
      left: 0,
      right: 0,
      bottom: 0,
      child: Card(
        margin: const EdgeInsets.all(0),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Center(
              child: _getCardDetails(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getCardDetails() {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getTextInsideCard(
              'Get Started Free.', 'Free Forever. No Credit Card needed'),
          _getTextBox(),
          const ReusableButton(
            text: 'Sign Up',
          ),
          _getLineText(),
          _getOtherSignInOption()
        ],
      ),
    );
  }

  Widget _getLineText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: Colors.grey.shade400,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            'Or Sign up with',
            style: TextStyle(fontSize: 12.0, color: Colors.grey.shade400),
          ),
        ),
        Expanded(
          child: Divider(
            color: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }

  Widget _getTextInsideCard(String titleText, String subtitleText) {
    return Column(
      children: [
        Text(
          titleText,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          subtitleText,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
        ),
      ],
    );
  }

  Widget _getTextBox() {
    return Column(
      children: const [
        ReusableTextFieldWidget(
          labelText: 'Name',
          isPassword: false,
        ),
        SizedBox(
          height: 20,
        ),
        ReusableTextFieldWidget(
          labelText: 'Email',
          isPassword: false,
        ),
        SizedBox(
          height: 20,
        ),
        ReusableTextFieldWidget(
          labelText: 'Password',
          isPassword: true,
        ),
      ],
    );
  }

  Widget _getOtherSignInOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google.png',
                width: 30,
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text('Sign up with Google'),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.facebook,
            color: Colors.blue,
          ),
        )
      ],
    );

    // return SafeArea(
    //   child: Scaffold(
    //     body: Center(
    //       child: Column(
    //         children: [
    //           buildTextField('username', (value) {
    //             context.read<SignUpBloc>().add(UserNameEvent(value));
    //           }),
    //           buildTextField('email', (value) {
    //             context.read<SignUpBloc>().add(EmailEvent(value));
    //           }),
    //           buildTextField('password', (value) {
    //             context.read<SignUpBloc>().add(PasswordEvent(value));
    //           }),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
