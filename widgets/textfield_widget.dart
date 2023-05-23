import 'package:flutter/material.dart';

class ReusableTextFieldWidget extends StatelessWidget {
  final TextEditingController? textController;
  final String? labelText;
  final String? hintText;
  final bool isPassword;
  const ReusableTextFieldWidget(
      {super.key, this.textController, this.labelText, this.hintText, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10)),
      width: double.infinity,
      child: TextFormField(
        decoration: InputDecoration(
          enabledBorder: _getBorder(),
          focusedBorder: _getBorder(),
          labelText: labelText,
          labelStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        obscureText: isPassword,
      ),
    );
  }

  UnderlineInputBorder _getBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(20.0),
    );
  }
}
