import 'package:music_app/models/audio.model.dart';
import 'package:music_app/models/playelist.model.dart';
import 'package:riverpod/riverpod.dart';
import 'package:just_audio/just_audio.dart';

final selectAudioPlayerController = StateProvider<AudioPlayer?>((ref) => null);
final isPlaying = StateProvider<bool>((ref) => false);

final audioController = StateNotifierProvider<AudioController, AudioModel?>(
  (ref) => AudioController(),
);

class AudioController extends StateNotifier<AudioModel?> {
  AudioController() : super(null);

  List<AudioModel> favAudios = [
    AudioModel(
      audioName: 'Bye Bye',
      audioSingers: 'Marshmello, Juice WRLD',
      duration: const Duration(minutes: 2, seconds: 9),
      audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
      imagePath: 'assets/bye-bye.jpeg',
    ),
    AudioModel(
        audioName: 'I Like You',
        audioSingers: 'Post Malone, Doja Cat',
        duration: const Duration(minutes: 4, seconds: 3),
        audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
        imagePath: 'assets/bye-bye.jpeg'),
    AudioModel(
        audioName: 'Fountains',
        audioSingers: 'Drake, Tems',
        duration: const Duration(minutes: 3, seconds: 18),
        audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
        imagePath: 'assets/bye-bye.jpeg'),
  ];

  List<PlayListModel> playLists = [
    PlayListModel(
      audioList: [
        AudioModel(
            audioName: 'Bye Bye',
            audioSingers: 'Marshmello, Juice WRLD',
            duration: const Duration(minutes: 2, seconds: 9),
            audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
            imagePath: 'assets/bye-bye.jpeg'),
        AudioModel(
            audioName: 'I Like You',
            audioSingers: 'Post Malone, Doja Cat',
            duration: const Duration(minutes: 4, seconds: 3),
            audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
            imagePath: 'assets/bye-bye.jpeg'),
        AudioModel(
            audioName: 'Fountains',
            audioSingers: 'Drake, Tems',
            duration: const Duration(minutes: 3, seconds: 18),
            audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
            imagePath: 'assets/bye-bye.jpeg'),
      ],
      imagePath: 'assets/r&b.jpeg',
      playListName: 'R&B Playlist',
      playdescription: 'Chill your mind',
    ),
    PlayListModel(
      audioList: [
        AudioModel(
            audioName: 'Bye Bye',
            audioSingers: 'Marshmello, Juice WRLD',
            duration: const Duration(minutes: 2, seconds: 9),
            audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
            imagePath: 'assets/bye-bye.jpeg'),
        AudioModel(
            audioName: 'I Like You',
            audioSingers: 'Post Malone, Doja Cat',
            duration: const Duration(minutes: 4, seconds: 3),
            audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
            imagePath: 'assets/bye-bye.jpeg'),
        AudioModel(
            audioName: 'Fountains',
            audioSingers: 'Drake, Tems',
            duration: const Duration(minutes: 3, seconds: 18),
            audioFilePath: 'assets/audio/Workout Energy/Believer.mp3',
            imagePath: 'assets/bye-bye.jpeg'),
      ],
      imagePath: 'assets/daily-mix-2.jpeg',
      playListName: 'Daily Mix 2',
      playdescription: 'Made for you',
    )
  ];
}
