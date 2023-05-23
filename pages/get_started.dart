import 'package:flutter/material.dart';
import 'package:flutter_demo/widgets/button_widget.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _getUpperText(),
          _getLowOpacityCard(),
          _getCard(context),
        ],
      ),
    );
  }

  Widget _getUpperText() {
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
        child: const Center(
          child: Text(
            'JobFill',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
          ),
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

  Widget _getCard(BuildContext context) {
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
              child: _getCardDetails(context),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getCardDetails(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _getImage(),
          _getTextBelowImage(),
          _getButtonBelowText(context),
        ],
      ),
    );
  }

  Widget _getImage() {
    return Image.asset(
      'assets/images/get_started.png',
      width: 300,
      height: 300,
    );
  }

  Widget _getTextBelowImage() {
    return const Text(
      'Transformative Collaboration for Larger Teams',
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
    );
  }

  Widget _getButtonBelowText(BuildContext context) {
    return ReusableButton(
      text: 'Get Started',
      onTap: () => Navigator.pushNamed(context, 'mySignIn'),
    );
  }
}
