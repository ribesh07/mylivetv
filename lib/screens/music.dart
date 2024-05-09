// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:mylivetv/screens/video_player_page.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  _MusicState createState() => _MusicState();
}

class _MusicState extends State<Music> {
  late FlickManager flickManager;
  int index = 0;
  var urls = [
    'https://d2q8p4pe5spbak.cloudfront.net/bpk-tv/9XM/9XM.isml/index.m3u8',
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SamplePlayer(
                                  link: urls[0],
                                )));
                  },
                  child: const Text('Link1: Channel 1')),
              ElevatedButton(onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SamplePlayer(
                                  link: urls[0],
                                )));

              }, child: const Text('Link2 : Channel2')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Back')),
            ],
          ),
        ),
      ),
    );
  }
}
