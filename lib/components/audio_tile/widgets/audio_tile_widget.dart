import 'package:flutter/material.dart';
import 'package:music_app/models/audio.model.dart';

class AudioTileWidget extends StatelessWidget {
  const AudioTileWidget({
    required this.audioModel,
    super.key,
  });
  final AudioModel audioModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          audioModel.imagePath,
          fit: BoxFit.cover,
          width: 56,
          height: 56,
        ),
      ),
      title: Text(
        audioModel.audioName,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        audioModel.audioSingers,
        style: const TextStyle(
          color: Color(0xFFA5A5A5),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
      trailing: Text(
        '${audioModel.duration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${audioModel.duration.inSeconds.remainder(60).toString().padLeft(2, '0')}',
        style: const TextStyle(
          color: Color(0xFFA5A5A5),
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
      ),
    );
  }
}
