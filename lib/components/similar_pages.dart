import 'package:flutter/material.dart';
import 'package:spotify/components/back_btn.dart';
import 'package:spotify/components/colors.dart';

class SimilarPages extends StatefulWidget {
  const SimilarPages(
      {super.key,
      required this.instructionText,
      // required this.controller,
      this.info,
      this.onPressed});
  final void Function()? onPressed;
  final String instructionText;
  // final TextEditingController controller;
  final String? info;
  @override
  State<SimilarPages> createState() => _SimilarPagesState();
}

class _SimilarPagesState extends State<SimilarPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg1,
      appBar: AppBar(
        leading: const BackBtn(),
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 168, 165, 165)),
        backgroundColor: Colors.transparent,
        // ignore: prefer_const_constructors
        title: Text(
          "Create account",
          style: const TextStyle(
              color: Color.fromARGB(255, 177, 173, 173),
              fontSize: 15,
              fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.instructionText,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: const BorderSide(style: BorderStyle.none),
                    gapPadding: 11,
                    borderRadius: BorderRadius.circular(8)),
                filled: true,
                fillColor: txtfield,
              ),
              // controller: widget.controller,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              widget.info!,
              style: const TextStyle(color: Colors.white, fontSize: 10),
            ),
            const SizedBox(
              height: 36,
            ),
            Center(
                child: ElevatedButton(
                    onPressed: widget.onPressed,
                    style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(nextBtn)),
                    child: const Text(
                      "Next",
                      style: TextStyle(color: Colors.black),
                    )))
          ],
        ),
      ),
    );
  }
}
