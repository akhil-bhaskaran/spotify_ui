import 'package:flutter/material.dart';

class CardX extends StatefulWidget {
  const CardX(
      {super.key,
      required this.title,
      required this.pic,
      required this.callbackFunction});
  final String title;
  final String pic;
  final Function(int value) callbackFunction;
  @override
  State<CardX> createState() => _CardStateX();
}

class _CardStateX extends State<CardX> {
  bool isSelected = false;
  static int counter = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Column(
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.pic),
                    maxRadius: 55,
                  ),
                  Positioned(
                    bottom: 4,
                    right: 0,
                    child: Icon(
                      Icons.circle,
                      color: isSelected ? Colors.white : Colors.transparent,
                    ),
                  )
                ],
              ),
            ),
            Text(
              widget.title,
              style: const TextStyle(color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
      onTap: () {
        isSelected = !isSelected;

        setState(() {
          if (isSelected) counter++;
          if (!isSelected) counter--;
        });
        widget.callbackFunction(counter);
      },
    );
  }
}
