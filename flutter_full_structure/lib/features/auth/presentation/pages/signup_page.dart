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
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
 final formtype = GlobalKey<FormState>(); 
 @override
  void dispose() { // used for cleaning uo the controllers when the page is diposed.
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
     body: Padding(
       padding: EdgeInsets.all(15),
       child: Form(
          key: formtype,
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children:  [
           const Text('Sign Up.' , style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
          ),),
           const SizedBox(
            height: 30,
          ),
              AuthField(hintext: 'Name',
             controller:nameController, obscureText: true,),
             const SizedBox(
            height: 15,
          ),
             AuthField(hintext: 'Email',
            controller: emailController, obscureText: true,),
              const SizedBox(
            height: 15,
          ),
              AuthField(hintext: 'Password',
              obscureText: true,
              controller: passwordController,),
              const SizedBox(
            height: 15,
          ),
           const SizedBox(
            height: 20,
          ),const AuthGradientButton(),
          const  SizedBox(
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
     ),
    );
  }
}