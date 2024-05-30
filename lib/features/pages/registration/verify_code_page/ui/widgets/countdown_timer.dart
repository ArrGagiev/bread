import 'package:bread/core/themes/extentions/registration_theme.dart';
import 'package:timer_count_down/timer_controller.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:flutter/material.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({super.key, this.controller});

  final CountdownController? controller;

  @override
  Widget build(BuildContext context) {
    String formatDuration(Duration duration) {
      String twoDigits(int n) => n.toString().padLeft(2, '0');
      String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
      String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
      return "$twoDigitMinutes:$twoDigitSeconds";
    }

    return Center(
      child: Countdown(
        controller: controller,
        seconds: 5,
        build: (BuildContext context, double time) => Text(
          formatDuration(Duration(seconds: time.toInt())),
          style: context.registrationTheme.bodyMedium,
        ),
        interval: const Duration(seconds: 1),
        // onFinished: () {},
      ),
    );
  }
}
