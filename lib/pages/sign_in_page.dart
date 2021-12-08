import 'package:flutter/material.dart';
import 'package:pakektp/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background_red.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/sign-in-personal');
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.43,
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/personal_image.png',
                      height: 310,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.43,
                    padding: const EdgeInsets.symmetric(
                      vertical: 30,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(
                        30,
                      ),
                    ),
                    width: double.infinity,
                    child: Image.asset(
                      'assets/mitra_image.png',
                      height: 310,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
