import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';
import 'package:spotify/components/search_cards.dart';
import 'package:spotify/components/song_playing.dart';
import 'package:spotify/pages/searchod.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<Color> crdcolor = [
    const Color.fromARGB(159, 95, 100, 33),
    const Color.fromARGB(234, 14, 0, 85),
    const Color.fromARGB(255, 55, 112, 77),
    const Color.fromARGB(159, 106, 34, 107)
  ];
  List<String> crdText = ['2024 Wrapped', 'Podcasts', 'Made for you', 'Charts'];
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
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Search",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.camera_enhance_outlined,
                          color: Color.fromARGB(255, 183, 178, 178),
                        ))
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchOG(),
                        ));
                  },
                  child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.white,
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            Text(
                              'Artists,songs,or podcasts',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 96, 96, 96)),
                            )
                          ],
                        ),
                      )),
                ),
                const SizedBox(
                  height: 18,
                ),
                const Text(
                  "Your top generes",
                  style: TextStyle(
                      color: Color.fromARGB(255, 169, 167, 167), fontSize: 14),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SearchCards(
                      bgcolor: Colors.purple,
                      cardText: 'Pop',
                      imageName: 'assets/general/galata.jpeg',
                    ),
                    SearchCards(
                      bgcolor: Color.fromARGB(245, 54, 120, 56),
                      cardText: 'Indie',
                      imageName: 'assets/general/album.jpeg',
                    ),
                  ],
                ),
                const Text(
                  "Popular podcast categories",
                  style: TextStyle(
                      color: Color.fromARGB(255, 169, 167, 167), fontSize: 14),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SearchCards(
                      bgcolor: Color.fromARGB(255, 0, 55, 255),
                      cardText: 'News &\n Politics',
                      imageName: 'assets/general/album.jpeg',
                    ),
                    SearchCards(
                      bgcolor: Color.fromARGB(245, 255, 38, 0),
                      cardText: 'Comedy',
                      imageName: 'assets/general/album.jpeg',
                    ),
                  ],
                ),
                const Text(
                  "Browse all",
                  style: TextStyle(
                    color: Color.fromARGB(255, 169, 167, 167),
                  ),
                ),
                ScrollConfiguration(
                  behavior: ScrollBehavior().copyWith(
                    overscroll: false,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                    child: GridView.builder(
                      primary: false,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 150,
                        crossAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) => SearchCards(
                          bgcolor: crdcolor[index],
                          cardText: crdText[index],
                          imageName: 'assets/general/album.jpeg'),
                      itemCount: crdText.length,
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                )
              ],
            ),
            const Align(
              child: SongPlaying(
                  picName: "assets/general/matha.jpeg",
                  picAbout: 'Mathapithakkale'),
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
    );
  }
}
