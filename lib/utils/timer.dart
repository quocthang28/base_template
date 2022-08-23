import 'dart:async';

import 'package:flutter/material.dart';

class TimerUtils {
  static Timer? _timer;

  static void startTimer(durationInSeconds, Function(int)? onEveryTick, VoidCallback onTimerEnd) {
    int totalDuration = durationInSeconds;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      totalDuration--;
      if (onEveryTick != null) {
        onEveryTick(totalDuration);
      }

      if (totalDuration == 0) {
        onTimerEnd();
        _timer?.cancel();
      }
    });
  }
}
