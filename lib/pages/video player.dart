import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:saran_ott/widgets/model.dart';
class videoplayer extends StatefulWidget {
  const videoplayer({super.key});

  @override
  State<videoplayer> createState() => _videoplayerState();
}

class _videoplayerState extends State<videoplayer> {



  bool isDarkMode = true;


  late VideoPlayerController _videoPlayerController,
  _videoPlayerController1,
  _videoPlayerController2;

  late CustomVideoPlayerController _customVideoPlayerController;
  late CustomVideoPlayerWebController _customVideoPlayerWebController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
  const CustomVideoPlayerSettings(showSeekButtons: true);

  final CustomVideoPlayerWebSettings _customVideoPlayerWebSettings =
  CustomVideoPlayerWebSettings(
    src: longVideo,
  );


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _videoPlayerController = VideoPlayerController.network(longVideo,
    )..initialize().then((value) => setState((){}));
    _videoPlayerController1 = VideoPlayerController.network(video240);
    _videoPlayerController2 = VideoPlayerController.network(video480);
    _customVideoPlayerController = CustomVideoPlayerController(
        context: context,
        videoPlayerController: _videoPlayerController,
      customVideoPlayerSettings: _customVideoPlayerSettings,
      additionalVideoSources: {
          "240p" : _videoPlayerController1,
          "480p" : _videoPlayerController2,
          "720p" : _videoPlayerController,
      }
    );

    _customVideoPlayerWebController = CustomVideoPlayerWebController(
      webVideoPlayerSettings: _customVideoPlayerWebSettings,
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width*1,
            decoration: BoxDecoration(
              color: bg,
            ),
            child: ListView(
              children: [
                Center(
                  child: Text("Animals in VIDY",
                  style: vidy,
                  ),
                ),
                SizedBox(height: 200),
                kIsWeb
                    ? Expanded(
                  child: CustomVideoPlayerWeb(
                    customVideoPlayerWebController:
                    _customVideoPlayerWebController,
                  ),
                )
                    : CustomVideoPlayer(
                  customVideoPlayerController: _customVideoPlayerController,
                ),
                CupertinoButton(
                  child: const Text("Play Fullscreen"),
                  onPressed: () {
                    if (kIsWeb) {
                      _customVideoPlayerWebController.setFullscreen(true);
                      _customVideoPlayerWebController.play();
                    } else {
                      _customVideoPlayerController.setFullscreen(true);
                      _customVideoPlayerController.videoPlayerController.play();
                    }
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}


String longVideo =
    "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

String video720 =
    "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_10mb.mp4";

String video480 =
    "https://www.sample-videos.com/video123/mp4/480/big_buck_bunny_480p_10mb.mp4";

String video240 =
    "https://www.sample-videos.com/video123/mp4/240/big_buck_bunny_240p_10mb.mp4";
