// ignore_for_file: library_private_types_in_public_api, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class SamplePlayer extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  String link;

  SamplePlayer({super.key, required this.link});

  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}

class _SamplePlayerState extends State<SamplePlayer> {
  late FlickManager flickManager;
  // link = widget.link ;
  var urls = [
    'https://41.205.93.154/STARSPORTS1/index.m3u8',
    'https://jancdn-b.bunycdn.com/live/indexa22.m3u8',
    'https://bunyhlsipla.bunycdn.com/live/720pa.m3u8',
    'https://d2q8p4pe5spbak.cloudfront.net/bpk-tv/9XM/9XM.isml/index.m3u8',
  ];
  // int index=2;
  @override
  void initState() {
 String selectedLink = widget.link.toString();

    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.network(
        selectedLink,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

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
              Container(
                alignment: Alignment.center,
                height: 275,
                width: 275,
                child: FlickVideoPlayer(
                  flickManager: flickManager,
                  flickVideoWithControls: const FlickVideoWithControls(
                    closedCaptionTextStyle: TextStyle(fontSize: 8),
                    controls: FlickPortraitControls(),
                  ),
                  flickVideoWithControlsFullscreen:
                      const FlickVideoWithControls(
                    controls: FlickLandscapeControls(),
                  ),
                ),
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
