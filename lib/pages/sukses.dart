import 'package:flutter/material.dart';
import 'package:hcfood_ui/utils/theme.dart';

class Sukses extends StatelessWidget {
  const Sukses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(
              'assets/images/sukses.png',
              width: 185,
              height: 165,
            ),
            const SizedBox(
              height: 41,
            ),
            Text(
              'Registrasi Sukses!',
              style: kTitleMenu(kSecondColor),
            ),
            const SizedBox(
              height: 200,
            ),
            Container(
              height: 51,
              width: 254,
              decoration: BoxDecoration(
                color: kSecondColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text(
                'Login',
                style: kMenu,
              ),
            )
          ],
        ),
      ),
    );
  }
}
