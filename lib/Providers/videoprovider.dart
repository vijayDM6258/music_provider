import 'package:chewie/chewie.dart';
import 'package:flutter/foundation.dart';

import 'package:video_player/video_player.dart';

import '../Model/videosmodel.dart';

class VideoProvider extends ChangeNotifier {
  VideoModel videoModel = VideoModel();

  void startvideo(int index) {
    videoModel.videoPlayerController =
        VideoPlayerController.asset(videoModel.list[index]['videopath'])
          ..initialize();
    notifyListeners();
  }

  void chewiecontroller() {
    videoModel.chewieController = ChewieController(
        videoPlayerController: videoModel.videoPlayerController);
    notifyListeners();
  }
}
