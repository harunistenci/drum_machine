import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DrumMachine());
}

class DrumMachine extends StatelessWidget {
  const DrumMachine({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

class DrumPage extends StatelessWidget {
  DrumPage({super.key});

  final oynatici = AudioPlayer();

  void sesOynat(String ses) {
    oynatici.play(AssetSource('$ses.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumpPad('bongo', Colors.blueAccent),
                  ),
                  Expanded(
                    child: buildDrumpPad('bip', Colors.redAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumpPad('clap1', Colors.pinkAccent),
                  ),
                  Expanded(
                    child: buildDrumpPad('clap2', Colors.blueGrey),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumpPad('clap3', Colors.orangeAccent),
                  ),
                  Expanded(
                    child: buildDrumpPad('crash', Colors.lightBlueAccent),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: buildDrumpPad('how', Colors.pinkAccent),
                  ),
                  Expanded(
                    child: buildDrumpPad('oobah', Colors.brown),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Refactoring
  TextButton buildDrumpPad(String ses, Color renk) {
    return TextButton(
      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
      onPressed: () {
        sesOynat(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
