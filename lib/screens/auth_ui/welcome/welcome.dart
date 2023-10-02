import 'package:flutter/material.dart';
import 'package:e_commerce_appp/constants/asset_images.dart';
import 'package:e_commerce_appp/constants/routes.dart';
import 'package:e_commerce_appp/screens/auth_ui/login/login.dart';
import 'package:e_commerce_appp/widgets/primary_button/primary_button.dart';
import 'package:e_commerce_appp/widgets/top_titles/top_titles.dart';

import '../sign_up/sign_up.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopTitles(
                subtitle: "Buy AnyItems From Using App ", title: "Welcome"),
            Center(
              child: Image.asset(
                AssetsImages.instance.welcomeImage,
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     CupertinoButton(
            //       onPressed: () {},
            //       padding: EdgeInsets.zero,
            //       child: const Icon(
            //         Icons.facebook,
            //         size: 35,
            //         color: Colors.blue,
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 12.0,
            //     ),
            //     CupertinoButton(
            //       onPressed: () {},
            //       padding: EdgeInsets.zero,
            //       child: Image.asset(
            //         AssetsImages.instance.googleLogo,
            //         scale: 30.0,
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(
              height: 30.0,
            ),
            PrimaryButton(
              title: "Login",
              onPressed: () {
                Routes.instance.push(widget: const Login(), context: context);
              },
            ),
            const SizedBox(
              height: 18.0,
            ),
            PrimaryButton(
              title: "Sign Up",
              onPressed: () {
                Routes.instance.push(widget: const SignUp(), context: context);
              },
            ),
          ],
        ),
      ),
    );
  }
}