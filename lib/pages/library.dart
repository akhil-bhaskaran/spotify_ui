import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/components/elevated_btn.dart';
import 'package:spotify/components/library_card.dart';
import 'package:spotify/components/search_items.dart';

class Library extends StatefulWidget {
  Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  List<String> img = [
    'assets/general/liked.png',
    "assets/general/artist/tom odell.jpeg",
    "assets/general/artist/ar.jpeg",
    "assets/general/podcast/p4.jpeg",
    'assets/general/illu.jpeg',
    'assets/general/matha.jpeg',
  ];

  List names = [
    "Liked Songs",
    "Tom Odell",
    "Ariana",
    "Somethig",
    "Illuminaty",
    "Matahpithakale"
  ];

  List gerner = [
    "Playlist.58 Songs",
    "Artist",
    "Artist",
    "Podcast",
    "Song",
    "Song",
  ];
  bool isGrid = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg2,
      body: ListView(
        children: [
          const SizedBox(
            height: 26,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/general/artist/tom odell.jpeg'),
                    ),
                    Text(
                      "Your Library",
                      style: TextStyle(color: lowshade2, fontSize: 24),
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    size: 29,
                  )),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Row(
                  children: [
                    ElevatedBtn(btnText: 'Playlist'),
                    ElevatedBtn(btnText: 'Artists'),
                    ElevatedBtn(btnText: 'Albums'),
                    ElevatedBtn(btnText: 'Podcast & Shows'),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.arrow_upward,
                      color: txtfield,
                    ),
                    Text(
                      "Recently Played",
                      style: t3,
                    ),
                  ],
                ),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isGrid = !isGrid;
                    });
                  },
                  icon: isGrid ? Icon(Icons.list) : Icon(Icons.grid_3x3))
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: isGrid
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 170,
                        crossAxisSpacing: 12),
                    itemBuilder: (context, index) => LibraryCard(
                      gerner: gerner[index],
                      img: img[index],
                      name: names[index],
                    ),
                    itemCount: names.length,
                  )
                : ListView.builder(
                    itemBuilder: (context, index) => SearchItems(
                        name: names[index],
                        gerner: gerner[index],
                        imgName: img[index]),
                    itemCount: 6,
                  ),
          )
        ],
      ),
    );
  }
}
