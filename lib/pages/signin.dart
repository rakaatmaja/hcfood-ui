import 'package:flutter/material.dart';
import 'package:hcfood_ui/utils/theme.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Container(
        padding: const EdgeInsets.fromLTRB(146, 156, 146, 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Masuk',
              style: kTitle,
            ),
            const SizedBox(
              height: 96,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: '*********',
                ),
              ),
            ),
            SizedBox(
              height: 11,
            ),
            Text('Lupa Password ?'),
            SizedBox(height: 81,),
          ],
        ),
      ),
    );
  }
}
