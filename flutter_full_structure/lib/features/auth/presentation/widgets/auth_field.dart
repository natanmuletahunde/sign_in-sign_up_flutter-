import 'package:flutter/material.dart';

class AuthField extends StatelessWidget {
  final String hintext;
  final TextEditingController controller;
  final bool obscureText;

  const AuthField({
    super.key,
    required this.hintext,
    required this.controller,
    this.obscureText = false, // Default is false
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintext,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
