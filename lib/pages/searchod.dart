import 'package:flutter/material.dart';

import 'package:spotify/components/colors.dart';
import 'package:spotify/components/search_items.dart';
import 'package:spotify/pages/songs.dart';

class SearchOG extends StatefulWidget {
  const SearchOG({super.key});

  @override
  State<SearchOG> createState() => _SearchOGState();
}

class _SearchOGState extends State<SearchOG> {
  List<String> profilepics = [
    'assets/general/avesam.webp',
    'assets/general/galata.jpeg',
    'assets/general/hot hits.jpeg',
    'assets/general/illu.jpeg',
    'assets/general/matha.jpeg',
    'assets/general/daily 3.jpeg',
    'assets/general/podcast/p12.png',
    'assets/general/artist/armaan.jpeg'
  ];

  List<String> songName = [
    "Avesam",
    "Galata",
    "Hot Hits",
    "Illuminatti",
    "Mathapithakale ",
    "Daily",
    "P12",
    "Arjith Singh"
  ];
  List<String> gnr = [
    "Playlist",
    "Song",
    "Playlist",
    "Song",
    "Song",
    "Playlist",
    "Podcast",
    "Artist"
  ];

  @override
  Widget build(BuildContext context) {
    bool isPlaying = false;

    return Scaffold(
      backgroundColor: bg2,
      body: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: ListView(
          children: [
            const SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: bg1,
                        filled: true,
                        prefixIcon: Icon(
                          Icons.search_outlined,
                          color: lowshade1,
                        ),
                        labelText: 'Search',
                        labelStyle: t2,
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(19)),
                            borderSide: BorderSide.none)),
                  ),
                ),
                SizedBox(
                    height: 40,
                    width: MediaQuery.of(context).size.width / 5.1,
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Cancel", style: t2)))
              ],
            ),
            const SizedBox(
              height: 29,
            ),
            Text(
              "Recent searches",
              style: t1,
            ),
            // Container(
            //   color: bg1,
            //   width: MediaQuery.of(context).size.width,
            //   height: MediaQuery.of(context).size.height,
            // )
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                itemCount: gnr.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Songs(
                            callBack: (value) {
                              setState(() {
                                isPlaying = value;
                              });
                            },
                            isPlayingg: isPlaying,
                            imgName: profilepics[index],
                            songName: songName[index],
                            artistName: null,
                          ),
                        ));
                  },
                  child: SearchItems(
                    name: songName[index],
                    gerner: gnr[index],
                    imgName: profilepics[index],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
