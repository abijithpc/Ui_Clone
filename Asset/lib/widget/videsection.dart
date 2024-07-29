import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videsection extends StatefulWidget {
  const Videsection({super.key});

  @override
  State<Videsection> createState() => _VidesectionState();
}

class _VidesectionState extends State<Videsection> {
  YoutubePlayerController _ytcontroller = YoutubePlayerController(
      initialVideoId: 'ZknO3GkSFAg',
      flags: YoutubePlayerFlags(autoPlay: false, mute: true));
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What is Dukaan Premium",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            height: 15,
          ),
          YoutubePlayer(
            thumbnail: Image.asset("Asset/Image/youtube.jpg"),
            controller: _ytcontroller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.blueAccent,
            progressColors: const ProgressBarColors(
                playedColor: Colors.blueAccent, handleColor: Colors.blueAccent),
          )
        ],
      ),
    );
  }
}
