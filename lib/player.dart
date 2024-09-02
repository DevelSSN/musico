import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
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
          body: const Row(children: [
            Icon(Icons.skip_previous),
            Icon(Icons.play_arrow),
            Icon(Icons.arrow_forward)
          ]),
        ));
  }
}

Widget loader() {
  return const Placeholder();
}

class AudioHandler {
  AudioHandler() {
    final _player = AudioPlayer();
    Future<void> play() => _player.play();
    Future<void> pause() => _player.pause();
    Future<void> stop() => _player.stop();
  }
}
