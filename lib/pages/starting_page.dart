import 'package:flutter/material.dart';
import 'package:spotify/components/button.dart';
import 'package:spotify/pages/create_acc_page.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(40, 40, 40, 0.46),
      body: SafeArea(
        child: ListView(children: [
          Container(
            color: Colors.black,
            height: MediaQuery.of(context).size.height / 1.80,
            child: Image.asset(
              'assets/general/ui1.png',
              fit: BoxFit.cover,
            ),
          ),
          const Text(
            textAlign: TextAlign.center,
            "Millions of Songs.\nFree on Spotify.",
            style: TextStyle(
                height: 1.09,
                color: Colors.white,
                fontSize: 27,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromRGBO(30, 215, 96, 1))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccPage(),
                      ));
                },
                child: const Text(
                  "Sign up free",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                )),
          ),
          const Button(
            isInvert: false,
            btnText: 'Continue with Google',
            imagePath: 'assets/general/google.png',
          ),
          const Button(
              isInvert: false,
              imagePath: 'assets/general/fb.png',
              btnText: 'Continue with Facebook'),
          const Button(
              isInvert: true,
              imagePath: 'assets/general/apple.png',
              btnText: 'Continue with Apple'),
          GestureDetector(
            onTap: () {},
            child: const Text(
              "Log in",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
