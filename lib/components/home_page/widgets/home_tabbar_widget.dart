import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:music_app/components/audio_page/controllers/audio.controller.dart';
import 'package:music_app/components/audio_tile/widgets/audio_list_tile_widget.dart';
import 'package:music_app/components/home_page/widgets/recent_music_widget.dart';

class HomeTabBarWidget extends ConsumerWidget {
  const HomeTabBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: const [
        TabBar(
          isScrollable: true,
          tabs: [
            Tab(child: Text('Recent')),
            Text('Top 50'),
            Text('Chill'),
            Text('R&B'),
            Text('Festival'),
            Text('Party'),
          ],
        ),
        SizedBox(
          height: 500,
          child: TabBarView(
            children: [
              RecentMusicWidget(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
              SizedBox(),
            ],
          ),
        )
      ],
    );
  }
}
