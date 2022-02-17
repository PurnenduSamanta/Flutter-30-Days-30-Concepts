import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Widget'),
      ),
      body: AnimatedTextKit(animatedTexts: [
        TypewriterAnimatedText(
          'Purnendu Samanta',
          textStyle: const TextStyle(
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          speed: const Duration(milliseconds: 500),
        ),
      ],
        totalRepeatCount: 4,
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,

      ),
    );
  }
}
