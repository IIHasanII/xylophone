import 'package:flutter/material.dart';

import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(const XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playsound (int soundnumber){
    final assetsAudioPlayer = AssetsAudioPlayer();
                  assetsAudioPlayer.open(
                  Audio("assets/note$soundnumber.wav"),);
  }

  Expanded buildKey ({backgroundColor, soundnumber}){
    return Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                    backgroundColor: backgroundColor,),
                    onPressed: () {
                    playsound(soundnumber);
                    
                  }, child: null, 
                  ),
                );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.black,
        body: SafeArea(
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                
                buildKey(backgroundColor: Colors.red, soundnumber: 1),
                buildKey(backgroundColor: Colors.yellow, soundnumber: 2),
                buildKey(backgroundColor: Colors.orange, soundnumber: 3),
                buildKey(backgroundColor: Colors.green, soundnumber: 4),
                buildKey(backgroundColor: Colors.teal, soundnumber: 5),
                buildKey(backgroundColor: Colors.blue, soundnumber: 6),
                buildKey(backgroundColor: Colors.purple, soundnumber: 7),

              ],
            ),
            
          
        )
      ),
    );
  }
}