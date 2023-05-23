import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    shadowColor: Colors.black,
    backgroundColor: Colors.transparent,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0),
      child: Container(
        color: Colors.grey.withOpacity(0.1),
        height: 1.0,
      ),
    ),
    title: const Text(
      'Login',
      style: TextStyle(fontSize: 18),
    ),
  );
}

Widget buildThirdPartyLogin(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
    margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _reusableGestureDetector('google'),
        _reusableGestureDetector('facebook'),
        _reusableGestureDetector('apple'),
      ],
    ),
  );
}

Widget _reusableGestureDetector(String iconName) {
  return GestureDetector(
      onTap: () {},
      child: Image.asset(
        'assets/icons/$iconName.png',
        width: 30,
      ));
}

Widget reusableText(String text) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white.withOpacity(0.7),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}

Widget buildTextField(String hintText, void Function(String value)? func) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: TextField(
      keyboardType: const TextInputType.numberWithOptions(),
      onChanged: (value) => func!(value),
      maxLines: 1,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}

Widget reusableButton(String buttonName, void Function()? onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: 325,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
              color: Colors.grey.withOpacity(0.2)),
        ],
      ),
      child: Center(
        child: Text(buttonName),
      ),
    ),
  );
}
