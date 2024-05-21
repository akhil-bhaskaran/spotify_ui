import 'package:flutter/material.dart';

import 'package:spotify/components/cardz.dart';

import 'package:spotify/components/colors.dart';
import 'package:spotify/components/song_playing.dart';
import 'package:spotify/pages/library.dart';
import 'package:spotify/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
  bool isPaused = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ListView(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Recently Played",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_outlined,
                            ),
                            style: const ButtonStyle(
                                iconColor: WidgetStatePropertyAll(
                                    Color.fromARGB(255, 110, 107, 107))),
                          ),
                          IconButton(
                              style: const ButtonStyle(
                                  iconColor: WidgetStatePropertyAll(
                                      Color.fromARGB(255, 110, 107, 107))),
                              onPressed: () {},
                              icon: const Icon(Icons.restore_outlined)),
                          IconButton(
                              style: const ButtonStyle(
                                  iconColor: WidgetStatePropertyAll(
                                      Color.fromARGB(255, 110, 107, 107))),
                              onPressed: () {},
                              icon: const Icon(Icons.settings)),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 140,
                      mainAxisSpacing: 0,
                    ),
                    itemBuilder: (context, index) =>
                        Cardz(imgName: pPic[index], Pname: pName[index]),
                    itemCount: pName.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      children: [
                        Image.asset('assets/general/daily 2.jpeg'),
                        const SizedBox(
                          width: 9,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "#SPOTIFYWRAPPED",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                            ),
                            Text(
                              "Your 2021 in review",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                            image: const DecorationImage(
                              image: AssetImage(
                                'assets/general/podcast/p4.jpeg',
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          "Spoti podcast",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Editors picks",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisExtent: 140,
                      mainAxisSpacing: 0,
                    ),
                    itemBuilder: (context, index) =>
                        Cardz(imgName: pPic[index], Pname: pName[index]),
                    itemCount: pName.length,
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                //Playing song Indicator
              ],
            ),
            const Align(
              child: SongPlaying(
                  picName: "assets/general/matha.jpeg",
                  picAbout: 'Mathapithakkale'),
              alignment: Alignment.bottomCenter,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: LinearProgressIndicator(
                value: 0.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
