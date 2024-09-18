import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Xylophone"),
          centerTitle: true,
          backgroundColor: Colors.black12,
        ),
        body: SafeArea(
          child: Container(
            child: TextButton(
              onPressed: () async {
                print("Clicked");
                await player.play(
                  AssetSource('note1.wav'),
                );
              },
              child: Text("Button"),
            ),
          ),
        ),
      ),
    );
  }
}
