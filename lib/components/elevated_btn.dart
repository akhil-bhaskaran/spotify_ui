import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';

class ElevatedBtn extends StatefulWidget {
  const ElevatedBtn({super.key, required this.btnText});
  final String btnText;

  @override
  State<ElevatedBtn> createState() => _ElevatedBtnState();
}

class _ElevatedBtnState extends State<ElevatedBtn> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: isSelected
              ? Color.fromARGB(255, 171, 170, 170)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(23),
          border: Border.all(color: const Color.fromARGB(255, 95, 103, 102))),
      child: ElevatedButton(
        onPressed: () {
          isSelected = !isSelected;
          setState(() {
            
          });
        },
        style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(bg2)),
        child: Text(
          widget.btnText,
          style: t3,
        ),
      ),
    );
  }
}
