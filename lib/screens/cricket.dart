// ignore_for_file: library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:mylivetv/screens/video_player_page.dart';

class cricket extends StatefulWidget {
  const cricket({super.key});

  @override
  _cricketState createState() => _cricketState();
}

class _cricketState extends State<cricket> {
  late FlickManager flickManager;
  int index = 0;
  var urls = [
    'https://41.205.93.154/STARSPORTS1/index.m3u8',
    'https://jancdn-b.bunycdn.com/live/indexa22.m3u8',
    'https://bunyhlsipla.bunycdn.com/live/720pa.m3u8',
    'https://d2q8p4pe5spbak.cloudfront.net/bpk-tv/9XM/9XM.isml/index.m3u8',
  ];
  // // int index=2;
  // @override
  // void initState() {
  //   flickManager = FlickManager(
  //     videoPlayerController: VideoPlayerController.network(
  //       urls[3],
  //     ),
  //   );
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   flickManager.dispose();
  //   super.dispose();
  // }

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
              // Container(
              //   alignment: Alignment.center,
              //   height: 275,
              //   width: 275,
              //   child:
              //    FlickVideoPlayer(
              //     flickManager: flickManager,
              //     flickVideoWithControls: const FlickVideoWithControls(
              //       closedCaptionTextStyle: TextStyle(fontSize: 8),
              //       controls: FlickPortraitControls(),
              //     ),
              //     flickVideoWithControlsFullscreen:
              //         const FlickVideoWithControls(
              //       controls: FlickLandscapeControls(),
              //     ),
              //   ),
              // ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SamplePlayer(
                                  link: urls[0],
                                )));
                  },
                  child: const Text('Link0 :star sports')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SamplePlayer(
                                  link: urls[1],
                                )));
                  },
                  child: const Text('Link1: Channel jio')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SamplePlayer(
                                  link: urls[2],
                                )));
                  },
                  child: const Text('Link2 : Channel jio2')),
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
