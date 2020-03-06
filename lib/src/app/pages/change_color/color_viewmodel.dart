import 'dart:async';
import 'dart:math';

import 'package:mvvm/src/app/core/baseViewModel.dart';
import 'package:flutter/material.dart';

class ColorViewModel extends ViewModelBase {
// 1 stream controller
// 2 stream sink
// 3 add data to stream
// 4 dispose

  ColorViewModel();

  var color;

  changeColor() {
    color = colorRandom();
    this.updateState();
  }

  Color colorRandom() {
    Random _random = Random();
    return Color.fromARGB(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }
}
