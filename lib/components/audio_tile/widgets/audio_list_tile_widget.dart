import 'package:flutter/material.dart';
import 'package:music_app/components/audio_page/views/audio_page.view.dart';
import 'package:music_app/components/audio_tile/widgets/audio_tile_widget.dart';
import 'package:music_app/models/audio.model.dart';

class AudioListTile extends StatelessWidget {
  const AudioListTile({required this.audioList, super.key});
  final List<AudioModel> audioList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) => InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AudioPageView(
                audioModel: audioList[index],
              ),
            ),
          ),
          child: AudioTileWidget(
            audioModel: audioList[index],
          ),
        ),
        itemCount: audioList.length,
      ),
    );
  }
}
