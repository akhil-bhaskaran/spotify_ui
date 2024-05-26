import 'package:flutter/material.dart';
import 'package:spotify/pages/songs.dart';

class SongPlaying extends StatefulWidget {
  const SongPlaying({super.key, required this.picName, required this.picAbout});
  final String picName;
  final String picAbout;
  @override
  State<SongPlaying> createState() => _SongPlayingState();
}

class _SongPlayingState extends State<SongPlaying> {
  static bool isPaused = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Songs(
                  callBack: (value) {
                    isPaused = value;
                    setState(() {
                      print(isPaused);
                    });
                  },
                  isPlayingg: isPaused,
                  imgName: widget.picName,
                  artistName: null,
                  songName: widget.picAbout),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        color: Color.fromARGB(255, 90, 68, 5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
          child: Row(
            children: [
              Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    image: DecorationImage(image: AssetImage(widget.picName))),
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.picAbout,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    const Row(
                      children: [
                        const Icon(
                          Icons.bluetooth,
                          color: Colors.green,
                          size: 12,
                        ),
                        Text(
                          "LUTTAPI",
                          style:
                              TextStyle(color: Color.fromARGB(255, 9, 136, 16)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Icon(
                Icons.bluetooth,
                color: Color.fromARGB(255, 9, 136, 16),
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isPaused = !isPaused;
                      setState(() {});
                    });
                  },
                  icon: Icon(
                    isPaused ? Icons.play_arrow : Icons.pause,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
