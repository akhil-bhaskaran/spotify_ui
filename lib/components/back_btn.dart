import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      alignment: Alignment.centerRight,
      style: const ButtonStyle(
        backgroundColor:
            WidgetStatePropertyAll(Color.fromARGB(255, 20, 19, 19)),
      ),
      color: Colors.white,
      icon: const Icon(
        Icons.arrow_back_ios,
        size: 20,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }
}
