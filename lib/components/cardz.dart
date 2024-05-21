import 'package:flutter/material.dart';

class Cardz extends StatefulWidget {
  const Cardz({super.key, required this.imgName, required this.Pname});
  final String imgName;
  final String Pname;
  @override
  State<Cardz> createState() => _CardzState();
}

class _CardzState extends State<Cardz> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
          right: 13,
        ),
        child: Column(
          children: [
            Container(
              height: 110,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(
                    widget.imgName,
                  ),
                ),
              ),
            ),
            Text(
              widget.Pname,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
