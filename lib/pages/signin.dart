
import 'package:flutter/material.dart';
import 'package:hcfood_ui/pages/signup.dart';
import 'package:hcfood_ui/utils/theme.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(50, 156, 50, 48),
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
              const SizedBox(
                height: 11,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text('Lupa Password ?'),
              ),
              const SizedBox(
                height: 49,
              ),
              Container(
                height: 46,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: kSecondColor,
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Poppins',
                      color: kWhite,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 241,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const SignUp()),
                  ),
                ),
                child: RichText(
                  text: const TextSpan(children: [
                    TextSpan(
                        text: 'Tidak Punya Akun ?   ',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: 'Daftar',
                        style: TextStyle(
                          color: Colors.blue,
                        ))
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
