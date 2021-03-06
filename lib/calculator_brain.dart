import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    String end = '\n Contact ASP at +91-8802055318 for more info.';
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.' +
          end;
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good Job!' + end;
    } else {
      return 'You have a lower than normal body weight. Try to eat more often.' +
          end;
    }
  }
}
