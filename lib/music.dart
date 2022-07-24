import 'package:flutter/material.dart';

class PlayMusicPage extends StatefulWidget {
  const PlayMusicPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<PlayMusicPage> createState() => _PlayMusicPageState();
}

class _PlayMusicPageState extends State<PlayMusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/music_cover.png',
              height: 680,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
