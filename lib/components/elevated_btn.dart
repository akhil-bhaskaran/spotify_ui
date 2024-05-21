import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';

class ElevatedBtn extends StatelessWidget {
  const ElevatedBtn({super.key, required this.btnText});
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          border: Border.all(color: const Color.fromARGB(255, 95, 103, 102))),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(bg2)),
        child: Text(
          btnText,
          style: t3,
        ),
      ),
    );
  }
}
