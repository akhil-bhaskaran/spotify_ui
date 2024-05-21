import 'package:flutter/material.dart';
import 'dart:math';

class SearchCards extends StatelessWidget {
  const SearchCards(
      {super.key,
      required this.bgcolor,
      required this.cardText,
      required this.imageName});
  final Color bgcolor;
  final String cardText;
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: bgcolor,
      ),
      margin: const EdgeInsets.only(top: 13, bottom: 24),
      height: 100,
      width: MediaQuery.of(context).size.width * 0.45,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              cardText,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            height: 55,
            width: 55,
            bottom: -3,
            right: -10,
            child: Transform.rotate(
              angle: pi / 7.0,
              child: Container(
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 20, 20, 20),
                      blurRadius: 8,
                      spreadRadius: 1)
                ], image: DecorationImage(image: AssetImage(imageName))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
