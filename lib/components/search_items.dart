import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';

class SearchItems extends StatelessWidget {
  const SearchItems(
      {super.key,
      required this.name,
      required this.gerner,
      required this.imgName});
  final String name;
  final String gerner;
  final String imgName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: gerner.toLowerCase() == 'artist'
          ? CircleAvatar(
              backgroundImage: AssetImage(imgName),
              radius: 28,
            )
          : Image.asset(imgName),
      title: Text(
        name,
        style: t11,
      ),
      subtitle: Text(
        gerner,
        style: t3,
      ),
    );
  }
}
