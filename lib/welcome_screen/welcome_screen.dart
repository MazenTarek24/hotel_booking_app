import 'package:flutter/material.dart';

import '../register_screen/login_screen/login_screen.dart';
import '../register_screen/register_screen.dart';
import '../shared/components/components.dart';
import '../shared/constant/constant.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15,80,15,0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Let\'s you in',
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w900,
                  letterSpacing: .5,
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              customButtonForSocialMedia(
                image: 'assets/icons/Facebook.png',
                text: 'Continue with Facebook',
                onTap: () {},
              ),
              const SizedBox(
                height: 24,
              ),
              customButtonForSocialMedia(
                image: 'assets/icons/Google.png',
                text: 'Continue with Google',
                onTap: () {},
              ),
              const SizedBox(
                height: 24,
              ),
              customButtonForSocialMedia(
                image: 'assets/icons/Apple.png',
                text: 'Continue with Apple',
                onTap: () {},
              ),
              const SizedBox(
                height: 54,
              ),
              Divider(
                height: 9,
                thickness: 1.5,
              ),
              const SizedBox(
                height: 54,
              ),
              defaultButton(
                text: 'Sign in with password',
              function: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 54,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have account?',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.3,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: defaultColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.3,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}