import 'package:flutter/material.dart';
import 'package:music_app/models/playelist.model.dart';

class AudioCarouselCard extends StatelessWidget {
  const AudioCarouselCard({
    required this.playListModel,
    super.key,
  });
  final PlayListModel playListModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            playListModel.imagePath,
            fit: BoxFit.cover,
            width: (MediaQuery.of(context).size.width - 20) * 0.6,
            height: (MediaQuery.of(context).size.width - 20) * 0.6,
          ),
        ),
        Text(
          playListModel.playListName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        Text(
          playListModel.playListName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
