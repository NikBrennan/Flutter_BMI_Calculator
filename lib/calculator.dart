import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});
  final int height, weight;
  late double _bmi;

  String? calcBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String? getResult() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String? getDescription() {
    if (_bmi >= 25) {
      return "BMI isn't accurate if you have a lot of muscle mass, if this doesn't apply to you; try to be more active!";
    } else if (_bmi > 18.5) {
      return "You are within the range of a normal body weight.";
    } else {
      return "You can eat a bit more and still be healthy!";
    }
  }
}
