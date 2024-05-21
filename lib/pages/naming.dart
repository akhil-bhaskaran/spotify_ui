import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/components/custom_row.dart';
import 'package:spotify/pages/artist.dart';

class Naming extends StatefulWidget {
  const Naming({super.key});

  @override
  State<Naming> createState() => _NamingState();
}

class _NamingState extends State<Naming> {
  TextEditingController namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1,
      appBar: AppBar(
        leading: IconButton.filled(
          alignment: Alignment.centerRight,
          style: const ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(Color.fromARGB(255, 14, 14, 14))),
          color: Colors.white,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 168, 165, 165)),
        backgroundColor: Colors.transparent,
        title: const Text(
          "Create account",
          style: TextStyle(
              color: Color.fromARGB(255, 177, 173, 173),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What's your name?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.verified_sharp,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                    borderSide: const BorderSide(style: BorderStyle.none),
                    gapPadding: 11,
                    borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: txtfield,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "This appears on your spotify profile",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
            const SizedBox(
              height: 36,
            ),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'By tapping "Create account,you agree to the spotify Terms of Use.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.5,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              ' Terms of Use.',
              style: TextStyle(
                  color: Color.fromRGBO(30, 215, 96, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'To learn more about how Spotify collect,uses,shares and protects your personal data,Please see the Spotify Privacy Policy.',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.4,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              ' Privacy Policy.',
              style: TextStyle(
                  color: Color.fromRGBO(30, 215, 96, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomRow(
                rowtext: "Please send me news and offers from Spotiy."),
            const SizedBox(
              height: 19,
            ),
            const CustomRow(
                rowtext:
                    "Share my registration data with Spotify's content providers for marketing purpose."),
            SizedBox(
              height: MediaQuery.of(context).size.height / 4,
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Artist(),
                          ));
                    },
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.white)),
                    child: const Text(
                      "Create an account",
                      style: TextStyle(color: Colors.black),
                    ))),
          ],
        ),
      ),
    );
  }
}
