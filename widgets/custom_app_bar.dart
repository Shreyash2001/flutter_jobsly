import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String? text;
  final String? buttonText;
  final VoidCallback? onTap;
  const CustomAppBar({super.key, this.text, this.buttonText, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.chevron_left,
                size: 30,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Text(
                  text ?? '',
                  style: const TextStyle(color: Colors.white),
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    width: 90,
                    height: 35,
                    margin: const EdgeInsets.only(right: 20, left: 10),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          buttonText ?? '',
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
    ;
  }
}
