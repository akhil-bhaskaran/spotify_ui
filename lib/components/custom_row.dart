import 'package:flutter/material.dart';

class CustomRow extends StatefulWidget {
  const CustomRow({super.key, required this.rowtext});
  final String rowtext;
  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  bool fillcolor = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            widget.rowtext,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 10.5,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          height: 20,
          width: 20,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(side: BorderSide(color: Colors.white)),
              backgroundColor: fillcolor
                  ? Colors.white
                  : const Color.fromRGBO(40, 40, 40, 0.46),
            ),
            child: Container(),
            onPressed: () {
              setState(() {
                fillcolor = !fillcolor;
              });
            },
          ),
        ),
      ],
    );
  }
}
