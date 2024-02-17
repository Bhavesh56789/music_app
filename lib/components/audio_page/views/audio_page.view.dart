import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:music_app/components/audio_page/controllers/audio.controller.dart';
import 'package:music_app/models/audio.model.dart';

class AudioPageView extends ConsumerWidget {
  const AudioPageView({
    required this.audioModel,
    super.key,
  });
  final AudioModel audioModel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: const Color(0xFF0F0817),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                audioModel.imagePath,
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                audioModel.audioName,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),
              ),
              subtitle: Text(
                audioModel.audioSingers,
                style: TextStyle(
                  color: Color(0xFFA5A5A5),
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              trailing: Icon(
                Icons.favorite_outline,
                color: Colors.white,
              ),
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                overlayShape: SliderComponentShape.noThumb,
                trackHeight: 2.0,
                thumbColor: Colors.transparent,
                thumbShape:
                    const RoundSliderThumbShape(enabledThumbRadius: 0.0),
              ),
              child: Slider(
                min: 0,
                max: audioModel.duration.inSeconds.toDouble(),
                value: audioModel.duration.inSeconds.toDouble(),
                onChanged: (v) {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  '0:00',
                  style: TextStyle(
                    color: Color(0xFFA5A5A5),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                Text(
                  '2:09',
                  style: TextStyle(
                    color: Color(0xFFA5A5A5),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.shuffle_sharp,
                  color: Colors.white,
                  size: 24,
                ),
                SizedBox(
                    width: (MediaQuery.of(context).size.width - 120) * 0.2),
                const Icon(
                  Icons.skip_previous,
                  color: Colors.white,
                  size: 24,
                ),
                SizedBox(
                    width: (MediaQuery.of(context).size.width - 120) * 0.2),
                GestureDetector(
                  onTap: () async {
                    final player = (AudioPlayer()
                      ..setUrl('asset:${audioModel.audioFilePath}'));
                    ref
                        .read(selectAudioPlayerController.notifier)
                        .update((state) {
                      return player;
                    });
                    ref.read(selectAudioPlayerController)?.play();
                    ref.read(isPlaying.notifier).update((state) => true);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: SweepGradient(
                          colors: [
                            Color(0xFF842ED8),
                            Color(0xFFDB28A9),
                            Color(0xFF9D1DCA),
                          ],
                        )),
                    child: const Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
                SizedBox(
                    width: (MediaQuery.of(context).size.width - 120) * 0.2),
                const Icon(
                  Icons.skip_next,
                  size: 24,
                  color: Colors.white,
                ),
                SizedBox(
                    width: (MediaQuery.of(context).size.width - 120) * 0.2),
                const Icon(
                  Icons.repeat,
                  color: Colors.white,
                  size: 24,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
