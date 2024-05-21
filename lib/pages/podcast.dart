import 'package:flutter/material.dart';
import 'package:spotify/components/back_btn.dart';
import 'package:spotify/components/cardy.dart';
import 'package:spotify/components/colors.dart';

import 'package:spotify/pages/navigating.dart';

class Podcast extends StatefulWidget {
  const Podcast({super.key});

  @override
  State<Podcast> createState() => _PodcastState();
}

class _PodcastState extends State<Podcast> {
  List pName = [
    "Bussiness",
    "LifeStyle",
    "BXT Show",
    "Malayali show",
    "One Idea",
    "Music Podcast",
    "Travel Diaries",
    "Malayalm Story",
    "Beyond Coding",
    "Self Talk",
    "Josh Talk",
    "Privthi"
  ];
  List pPic = [
    "assets/general/podcast/p1.jpeg",
    "assets/general/podcast/p2.jpeg",
    "assets/general/podcast/p3.jpeg",
    "assets/general/podcast/p4.jpeg",
    "assets/general/podcast/p5.jpeg",
    "assets/general/podcast/p7.jpeg",
    "assets/general/podcast/p8.jpeg",
    "assets/general/podcast/p10.jpeg",
    "assets/general/podcast/p11.jpeg",
    "assets/general/podcast/p12.png",
    "assets/general/podcast/p13.png",
    "assets/general/podcast/p14.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 19),
        child: ListView(
          children: [
            const Text(
              "Now choose some \n podcast",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
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
            const SizedBox(
              height: 55,
            ),
            ScrollConfiguration(
              behavior: const ScrollBehavior().copyWith(overscroll: false),
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                child: GridView.builder(
                  primary: false,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisExtent: 140,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) => Cardy(
                    imgName: pPic[index],
                    Pname: pName[index],
                  ),
                  itemCount: pPic.length,
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 45,
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Navigating(),
                ));
          },
          child: const Text(
            "Done",
            style: TextStyle(
                color: Colors.black,
                fontSize: 14.5,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
