import 'dart:async';

import 'package:flutter/material.dart';

class TimerProvider with ChangeNotifier {
  late Timer _timer;
  int _seconds = 0;
  int _centiseconds = 0;

  int get seconds => _seconds;
  int get centiseconds => _centiseconds;


  void startTimer(PointerEvent details) {
    _seconds = 0;
    _centiseconds = 0;
    
    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      if(_centiseconds < 99) {
        _centiseconds++;
      } else if (_centiseconds >= 99) {
        _centiseconds = 0;
        _seconds++;
      }

      notifyListeners();
    });
  }

  void stopTimer(PointerEvent details) {
    _timer.cancel();
    if (_seconds <= 0 && _centiseconds <= 17) {
      _centiseconds = 0;
    }
    notifyListeners();
  }

  void resetTimer() {
    _timer.cancel();
    _seconds = 0;
    _centiseconds = 0;
    notifyListeners();
  }
}