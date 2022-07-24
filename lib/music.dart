import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class PlayMusicPage extends StatefulWidget {
  const PlayMusicPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  bool isPlaying = false;
  String startTime = '1:18';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Opacity(
                  opacity: 0.7,
                  child: Image.asset(
                    'images/music_cover.png',
                    height: 680,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45, bottom: 10),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            alignment: Alignment.center,
                            width: 160,
                            height: 35,
                            decoration: BoxDecoration(
                                color: const Color(0xFFD9D9D9).withOpacity(0.2),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0))),
                            child: Column(
                              children: const [
                                Text(
                                  'INVU',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '태연 (Taeyeon)',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const Text(
                          '기대지 마\n기대하지도 마',
                          style: TextStyle(color: Colors.white, fontSize: 11),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 13)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text(
                      startTime,
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    width: 270,
                    height: 10,
                    child: ProgressBar(
                      barHeight: 3.0,
                      thumbRadius: 4.0,
                      progressBarColor: const Color(0xFF234565),
                      baseBarColor: const Color(0xFF787878),
                      thumbColor: const Color(0xFF234565),
                      progress: const Duration(milliseconds: 1200),
                      total: const Duration(milliseconds: 3000),
                      onSeek: (duration) {},
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10),
                    child: const Text(
                      '3:25',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.symmetric(vertical: 8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.skip_previous_rounded),
                  color: Colors.white,
                  iconSize: 63.0,
                  onPressed: () {},
                ),
                IconButton(
                  icon: isPlaying
                      ? const Icon(Icons.pause_rounded)
                      : const Icon(Icons.play_arrow_rounded),
                  color: Colors.white,
                  iconSize: 63.0,
                  onPressed: () {
                    setState(() {
                      isPlaying = !isPlaying;
                      startTime = '1:19';
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.skip_next_rounded),
                  color: Colors.white,
                  iconSize: 63.0,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
