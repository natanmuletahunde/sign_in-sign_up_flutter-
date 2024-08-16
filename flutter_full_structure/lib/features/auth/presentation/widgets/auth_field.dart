import 'package:flutter/material.dart';
class AuthField extends StatelessWidget {
  final String hintext;
  const AuthField ({super.key, required this.hintext});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
       decoration: InputDecoration(
        hintText: hintext
       ),
    );
  }
}