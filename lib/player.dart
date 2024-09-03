import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Player extends StatefulWidget {
  const Player({super.key});
  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  final String s = "HI";
  late AudioHandler _audioHandler;
  @override
  Widget build(BuildContext context) {
    _audioHandler = AudioHandler();
    _audioHandler.setURL("Hi");
    _audioHandler.play();
    return MaterialApp(
        // routes: {
        //   '/': (context) => Loader(),
        // },
        title: 'Musico',
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Musico',
            ),
          ),
          body: Row(children: [
            IconButton(
                icon: const Icon(Icons.skip_previous),
                onPressed: () => setState(_audioHandler.setURL(s))),
            IconButton(
                icon: const Icon(Icons.play_arrow),
                onPressed: () => setState(_audioHandler.setURL(s))),
            IconButton(
                icon: const Icon(Icons.skip_next),
                onPressed: () => setState(_audioHandler.setURL(s))),
          ]),
        ));
  }
}

Widget loader() {
  return const Placeholder();
}

class AudioHandler {
  late var _player;
  AudioHandler() {
    _player = AudioPlayer();
  }
  Future<void> play() => _player.play();
  Future<void> pause() => _player.pause();
  Future<void> stop() => _player.stop();
  setURL(String s) {
    _player.setUrl(s);
  }
}
