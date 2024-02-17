import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/components/audio_card/widgets/audio_card_list_widget.dart';
import 'package:music_app/components/audio_page/controllers/audio.controller.dart';
import 'package:music_app/components/audio_tile/widgets/audio_list_tile_widget.dart';

class RecentMusicWidget extends ConsumerWidget {
  const RecentMusicWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        // AudioCardListWidget(
        //     playList: ref.read(audioController.notifier).playLists),
        AudioListTile(audioList: ref.read(audioController.notifier).favAudios),
      ],
    );
  }
}
