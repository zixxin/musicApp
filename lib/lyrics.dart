import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class LyricsPage extends StatefulWidget {
  const LyricsPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<LyricsPage> createState() => _LyricsPageState();
}

class _LyricsPageState extends State<LyricsPage> {
  bool isPlaying = false;
  bool isLike = true;
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
                  opacity: 0.2,
                  child: Image.asset(
                    'images/music_cover.png',
                    height: 680,
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 3.0),
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
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 50, bottom: 10, right: 7, left: 15),
                      child: Container(
                        padding: const EdgeInsets.only(top: 2.0),
                        alignment: Alignment.bottomCenter,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100))),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          icon: isLike
                              ? const Icon(Icons.favorite_rounded)
                              : const Icon(Icons.favorite_border_rounded),
                          color: const Color(0xFFE64C3C),
                          iconSize: 25.0,
                          onPressed: () {
                            setState(() {
                              isLike = !isLike;
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 50, bottom: 10, right: 23),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            color: const Color(0xFFD9D9D9).withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(100))),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          icon: const Icon(Icons.ios_share_rounded),
                          iconSize: 25.0,
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                        padding: EdgeInsets.only(top: 120, left: 30),
                        child: Text(
                            '밀어내 봐도\n난 너를 못 이겨\n날 버리고\n날 잃을수록\n넌 반짝이는 아이러니\nSo I N V U\nI N V U\nI N V U\n기대지 마',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                height: 1.75))),
                    Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text('기대하지도 마',
                            style: TextStyle(
                                color: Color(0xFF6195C5),
                                fontSize: 15,
                                height: 1.75))),
                    Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                            '몇 번을 되뇌고 되놰도\n그 손길 한 번에\n무너지는 날 볼 때\n네 기분은 어때\nI guess I lost my mind\nYeah It’s my kind of love\n늘 처음인 것 처럼\n서툴러서 또 상처가 나\n무뎌지기 전에',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                height: 1.75))),
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
