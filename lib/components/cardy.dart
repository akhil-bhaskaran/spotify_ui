import 'package:flutter/material.dart';

class Cardy extends StatefulWidget {
  const Cardy({super.key, required this.imgName, required this.Pname});
  final String imgName;
  final String Pname;
  @override
  State<Cardy> createState() => _CardyState();
}

class _CardyState extends State<Cardy> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
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
