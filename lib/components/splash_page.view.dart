import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_app/components/home_page/views/home_page.view.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Stack(
          children: [
            Image.asset(
              'assets/splash_background.jpeg',
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.black,
                Colors.transparent,
              ], begin: Alignment.bottomCenter, end: Alignment.topCenter)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Feel the beat',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Emmerse yourself into the\n world of music today',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: ((context) => HomePageView()),
                        )),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const SweepGradient(
                          colors: [
                            Color(0xFF842ED8),
                            Color(0xFFDB28A9),
                            Color(0xFF9D1DCA),
                          ],
                        ),
                      ),
                      child: const Text('Continue'),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
