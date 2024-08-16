import 'package:flutter/material.dart';
class AuthField extends StatelessWidget {
  final TextEditingController controller;
  final String hintext;
  final bool  isObscureText;
  const AuthField ({super.key, required this.hintext,required this.controller,
  this.isObscureText = false, required bool obscureText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
       controller: controller,
       decoration: InputDecoration(
        hintText: hintext
       ),
       validator: (value){
          if(value!.isEmpty){
            return 'Please enter your $hintext';
          }
          return null;
       },
       obscureText: isObscureText,
    );
  }
}