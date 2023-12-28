import 'dart:math';
//import 'package:flutter/cupertino.dart';
class CalculateBrain {
  CalculateBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }String getInter() {
    if (_bmi >= 30) {
      return 'High risk of obesity. Consider a healthy diet and regular exercise.';
    }
     else if (_bmi >= 18.5) {
      return 'Normal weight. Maintain a healthy lifestyle.';
    } else {
      return 'Below-average weight. Continue with healthy habits and exercise.';
    }
  }


}
