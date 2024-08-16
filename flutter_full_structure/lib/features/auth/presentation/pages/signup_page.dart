import 'package:flutter/material.dart';
import 'package:flutter_full_structure/core/theme/app_pallet.dart';
import 'package:flutter_full_structure/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter_full_structure/features/auth/presentation/widgets/auth_gradient.dart';
class SignUpPage extends StatefulWidget {
  const SignUpPage ({super.key});

  @override
  State <SignUpPage> createState() => _SignUpPage();
}

class  _SignUpPage extends State <SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
     body: Padding(
       padding: EdgeInsets.all(15),
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       children:  [
        Text('Sign Up.' , style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(
          height: 30,
        ),
          AuthField(hintext: 'Name'),
           SizedBox(
          height: 15,
        ),
          AuthField(hintext: 'Email'),
           SizedBox(
          height: 15,
        ),
          AuthField(hintext: 'Password'),
           SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 20,
        ),AuthGradientButton(),
        SizedBox(
          height: 15,
        ),
         RichText(text: TextSpan(text: "don't have an account?", style: Theme.of(context).textTheme.titleMedium,
         children: [
            TextSpan(
              text: 'sign in',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color:AppPallete.gradient2,)
            )
         ]))
       ],
       ),
     ),
    );
  }
}