import 'package:flutter/material.dart';
import 'package:flutter_full_structure/core/theme/app_pallet.dart';
class AuthGradientButton extends StatelessWidget {
  const AuthGradientButton({super.key});

  @override
  Widget build(BuildContext context) {
     return Container(
      decoration:  BoxDecoration(
        gradient: const LinearGradient(colors:[
          AppPallete.gradient1,
          AppPallete.gradient2 
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        ),
         borderRadius:BorderRadius.circular(7),
      ),
       child: ElevatedButton(onPressed: () {},  style: ElevatedButton.styleFrom(
        fixedSize: const Size(395, 55),
        backgroundColor:AppPallete.transparentColor,
        shadowColor: AppPallete.transparentColor,
       ),
       child:const Text('sign up',style : TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
       ),
     );
  }
}