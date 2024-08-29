import 'package:flutter/material.dart';

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
        ));
  }
}

Widget Loader() {
  return const Placeholder();
}
