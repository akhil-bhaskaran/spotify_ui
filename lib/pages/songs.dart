import 'package:flutter/material.dart';
import 'package:spotify/components/colors.dart';
import 'package:palette_generator/palette_generator.dart';

class Songs extends StatefulWidget {
  const Songs(
      {super.key,
      required this.imgName,
      required this.artistName,
      required this.songName,
      this.isPlayingg,
      this.callBack});
  final String imgName;
  final String? artistName;
  final String songName;
  final bool? isPlayingg;
  final Function(bool isPlayingg)? callBack;
  @override
  State<Songs> createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  PaletteGenerator? pg;
  bool isPlayingg = false;
  static bool isPlaying = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isPlaying = widget.isPlayingg!;
    addcolor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: pg != null
          ? pg!.darkVibrantColor != null
              ? pg!.darkVibrantColor!.color
              : Colors.black
          : Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          widget.songName,
          style: t11,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 30,
        ),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * .9,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(widget.imgName))),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.songName,
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    const Text(
                      "Artist name",
                      style:
                          TextStyle(color: Color.fromARGB(255, 168, 158, 158)),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.heart_broken,
                      color: Colors.white,
                    ))
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            const LinearProgressIndicator(
              color: Colors.white,
              value: .3,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("current time"), Text("total")],
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shuffle,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_left_sharp,
                      size: 60,
                      color: Colors.white,
                    )),

                //P L A Y I N G      B U T T O N
                IconButton(
                    icon: isPlaying
                        ? RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                isPlaying = !isPlaying;
                                // isPlayingg = isPlaying;
                                widget.callBack!(isPlaying);
                              });
                            },
                            elevation: 2.0,
                            fillColor: Colors.white,
                            padding: const EdgeInsets.all(12.0),
                            shape: const CircleBorder(),
                            child: Icon(
                              Icons.play_arrow_sharp,
                              size: 45.0,
                              color: pg != null
                                  ? pg!.darkVibrantColor != null
                                      ? pg!.darkVibrantColor!.color
                                      : Colors.black
                                  : Colors.black,
                            ),
                          )
                        : RawMaterialButton(
                            onPressed: () {
                              setState(() {
                                isPlaying = !isPlaying;
                                isPlayingg = isPlaying;
                                widget.callBack!(isPlaying);
                              });
                            },
                            elevation: 2.0,
                            fillColor: Colors.white,
                            padding: const EdgeInsets.all(12.0),
                            shape: const CircleBorder(),
                            child: Icon(
                              Icons.pause,
                              size: 45.0,
                              color: pg != null
                                  ? pg!.darkVibrantColor != null
                                      ? pg!.darkVibrantColor!.color
                                      : Colors.black
                                  : Colors.black,
                            ),
                          ),
                    onPressed: () {}),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_right_sharp,
                      size: 60,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.repeat,
                      color: Colors.white,
                    )),
              ],
            ),
            Container(
              color: pg != null
                  ? pg!.mutedColor != null
                      ? pg!.mutedColor!.color
                      : Colors.white
                  : Colors.white,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Lyrics",
                        style: TextStyle(
                            color: pg != null
                                ? pg!.mutedColor != null
                                    ? Colors.white
                                    : Colors.black
                                : Colors.black,
                            fontSize: 16),
                      ),
                      Container(
                        height: 27,
                        width: 75,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: const Color.fromARGB(163, 42, 41, 41),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "More",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            Icon(
                              Icons.ac_unit_rounded,
                              color: Colors.white,
                              size: 15,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void addcolor() async {
    pg = await PaletteGenerator.fromImageProvider(AssetImage(widget.imgName),
        size: const Size(200, 100), region: const Rect.fromLTRB(0, 0, 50, 100));
    setState(() {});
  }
}
