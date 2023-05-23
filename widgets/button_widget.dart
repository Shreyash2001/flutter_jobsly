import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onTap;
  const ReusableButton({super.key, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color(0xFF8E5AE2),
              const Color(0xFF8E5AE2).withOpacity(0.6)
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text ?? '',
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
