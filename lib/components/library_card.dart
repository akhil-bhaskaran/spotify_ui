import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';

class LibraryCard extends StatefulWidget {
  const LibraryCard(
      {super.key, required this.img, required this.gerner, required this.name});
  final String img;
  final String gerner;
  final String name;

  @override
  State<LibraryCard> createState() => _LibraryCardState();
}

class _LibraryCardState extends State<LibraryCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        height: 100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset(
                widget.img,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              widget.name,
              style: t11,
            ),
            Text(
              widget.gerner,
              style: t3,
            )
          ],
        ),
      ),
    );
  }
}
