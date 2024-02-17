import 'package:flutter/material.dart';
import 'package:music_app/components/audio_card/widgets/audio_carousel_card_widget.dart';
import 'package:music_app/models/playelist.model.dart';

class AudioCardListWidget extends StatelessWidget {
  const AudioCardListWidget({required this.playList, super.key});
  final List<PlayListModel> playList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => AudioCarouselCard(
          playListModel: playList[index],
        ),
        itemCount: playList.length,
      ),
    );
  }
}
