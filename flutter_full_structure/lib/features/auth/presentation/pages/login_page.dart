import 'package:flutter/material.dart';
import 'package:flutter_full_structure/core/theme/app_pallet.dart';
import 'package:flutter_full_structure/features/auth/presentation/pages/signup_page.dart';
import 'package:flutter_full_structure/features/auth/presentation/widgets/auth_field.dart';
import 'package:flutter_full_structure/features/auth/presentation/widgets/auth_gradient.dart';

class LoginPage extends StatefulWidget {
  // ignore: non_constant_identifier_names
  static Route ()=> 
    MaterialPageRoute(builder: (context) =>  const LoginPage());
  const LoginPage ({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the keyboard height
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign in.',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),
              AuthField(
                hintext: 'Email',
                controller: emailController,
                obscureText: false, // Assuming email should not be obscured
              ),
              const SizedBox(height: 15),
              AuthField(
                hintext: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              const SizedBox(height: 15),
              const SizedBox(height: 20),
              const AuthGradientButton(
                buttonText: 'sign in',
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                   Navigator.push(context, SignUpPage.Route());
                },
                child: RichText(
                  text: TextSpan(
                    text: "Don't have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: 'Sign up',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: AppPallete.gradient2,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: keyboardHeight), // Adjust padding based on keyboard height
            ],
          ),
        ),
      ),
    );
  }
}
