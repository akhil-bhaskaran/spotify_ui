import 'package:flutter/material.dart';
import 'package:spotify/components/back_btn.dart';
import 'package:spotify/components/card.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/pages/podcast.dart';

class Artist extends StatefulWidget {
  const Artist({super.key});

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  static int _counter = 0;
  var name = [
    "Tom Odell",
    "AR Rahman",
    "Billie Eilish",
    "Anirudh ",
    "Ariana grande",
    "BTS",
    "Ed Sheeran",
    "Lana Del Rey",
    "Sid Sreeram",
    "Armaan Maalik",
    "Arjith Singh"
  ];

  List<String> images = [
    "assets/general/artist/tom odell.jpeg",
    "assets/general/artist/ar.jpeg",
    "assets/general/artist/billi.webp",
    "assets/general/artist/ani.jpeg",
    "assets/general/artist/ariana.jpeg",
    "assets/general/artist/bts.jpeg",
    "assets/general/artist/ed sheeran.jpeg",
    "assets/general/artist/lana del rey.jpeg",
    "assets/general/artist/sid.jpeg",
    "assets/general/artist/armaan.jpeg",
    "assets/general/artist/arjit singh.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      appBar: AppBar(
          title: const Text(
            "Choose 3 or more artists you like.",
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: BackBtn()),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              height: 44,
              child: const TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(221, 39, 38, 38))),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 0,
              ),
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => CardX(
                callbackFunction: (value) {
                  _counter = value;
                  setState(() {
                    print(_counter);
                    if (_counter >= 3) ();
                  });
                },
                title: name[index],
                pic: images[index],
              ),
              itemCount: name.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _counter >= 3
          ? FloatingActionButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Podcast(),
                    ));
              },
              child: Text("Continue"),
            )
          : null,
    );
  }
}
