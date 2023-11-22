import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.buttonText, this.onTap});

  final String buttonText;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        margin: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0
        ),
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            buttonText,
            style:const TextStyle(
              fontSize: 22,
              color: Color(0xFF2B475E),
            ),
          ),
        ),
      ),
    );
  }
}