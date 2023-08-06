//this widget make text sliding
import 'package:flutter/material.dart';

//this make text move in splash screen
class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read Free Books',
              //this make text in center
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
