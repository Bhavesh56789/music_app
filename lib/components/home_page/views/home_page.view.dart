import 'package:flutter/material.dart';
import 'package:music_app/components/home_page/widgets/home_tabbar_widget.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: SizedBox.shrink(),
        ),
        backgroundColor: const Color(0xFF0F0817),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome back!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'What do you feel like today?',
                  style: TextStyle(
                    color: Color(0xFFA5A5A5),
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search song, playslist, artist...',
                    hintStyle: const TextStyle(color: Color(0xFFA5A5A5)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    fillColor: const Color(0xFF433E48),
                    focusColor: const Color(0xFF433E48),
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xFFA5A5A5),
                      size: 30,
                    ),
                  ),
                ),
                HomeTabBarWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
