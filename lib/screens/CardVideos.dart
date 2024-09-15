// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kulmiye/main_paths.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CardVideos extends StatelessWidget {
  final List data;

  CardVideos({
    super.key,
    required this.data,
  });

  YoutubePlayerController? videoController;
  // = YoutubePlayerController(
  //   // initialVideoId: 'iLnmTe5Q2Qw',
  //   flags: const YoutubePlayerFlags(
  //     autoPlay: true,
  //     mute: true,
  //   ),
  // );

  final bool muted = false;
  bool isPlayerReady = false;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(bottom: 20.0),
      itemCount: data.length,
      itemBuilder: (context, i) {
        // var videoId = YoutubePlayer.convertUrlToId(
        //     "https://www.youtube.com/watch?v=BBAyRBTfsOU");

        return Container(
          child: GestureDetector(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  //Title
                  data[i]['title'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1,
                    wordSpacing: 1,
                  ),
                ),
                YoutubePlayer(
                  controller: YoutubePlayerController(
                    initialVideoId: data[i]['url']!,
                    flags: const YoutubePlayerFlags(
                      mute: false,
                      autoPlay: false,
                      disableDragSeek: false,
                      loop: false,
                      isLive: false,
                      forceHD: false,
                      enableCaption: true,
                      controlsVisibleAtStart: false,
                      hideControls: false,
                      showLiveFullscreenButton: false,
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.green,
                  topActions: <Widget>[
                    Text(
                      data[i]['title'] ?? "",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.theme.textTheme.titleSmall?.copyWith(
                        color: Colors.white,
                        // fontSize: 12.0,
                      ),
                    ),
                  ],
                  actionsPadding: const EdgeInsets.all(16.0),
                  onReady: () {
                    isPlayerReady = true;
                  },
                  progressColors: const ProgressBarColors(
                    playedColor: Colors.green,
                    handleColor: Colors.greenAccent,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
