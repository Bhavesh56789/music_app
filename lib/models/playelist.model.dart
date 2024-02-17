import 'package:music_app/models/audio.model.dart';

class PlayListModel {
  PlayListModel({
    required this.playListName,
    required this.audioList,
    required this.playdescription,
    required this.imagePath,
  });

  String imagePath;
  String playListName;
  String playdescription;
  List<AudioModel> audioList;
}
