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
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () {
                        sesOynat('bongo');
                      },
                      child: Container(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () {
                        sesOynat('bip');
                      },
                      child: Container(
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () {
                        sesOynat('clap1');
                      },
                      child: Container(
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () {
                        sesOynat('clap2');
                      },
                      child: Container(
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () {
                        sesOynat('clap3');
                      },
                      child: Container(
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () {
                        sesOynat('crash');
                      },
                      child: Container(
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () {
                        sesOynat('how');
                      },
                      child: Container(
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.all(8)),
                      onPressed: () {
                        sesOynat('oobah');
                      },
                      child: Container(
                        color: Colors.brown,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
