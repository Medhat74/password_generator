import 'package:flutter/material.dart';

class GenerateButtonWidget extends StatelessWidget {
   GenerateButtonWidget({super.key, required this.fun});
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xFF3C3C3C),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: TextButton(
          onPressed: fun,
          child: const Text(
            "generate",
            style: TextStyle(
              color: Color(0xFF4C9BCF),
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
