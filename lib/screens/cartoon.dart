// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:mylivetv/screens/video_player_page.dart';

class Cartoon extends StatefulWidget {
  const Cartoon({super.key});

  @override
  _CartoonState createState() => _CartoonState();
}

class _CartoonState extends State<Cartoon> {
  late FlickManager flickManager;
  // int index = 0;
  var urls = [
    'https://amg01448-samsungin-pogo-samsungin-dzccl.amagi.tv/playlist/amg01448-samsungin-pogo-samsungin/playlist.m3u8',
    'https://amg01448-samsungin-cartoonnw-samsungin-1y8kz.amagi.tv/playlist/amg01448-samsungin-cartoonnw-samsungin/playlist.m3u8',
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
                  child: const Text('Link1: Pogo')),
              ElevatedButton(onPressed: () {
                  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SamplePlayer(
                                  link: urls[1],
                                )));

              }, child: const Text('Link2 : CN')),
              const SizedBox(
                height: 100,
              ),
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
