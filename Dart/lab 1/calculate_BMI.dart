import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("Entetr your weight in Pound");
  double weight = double.parse(stdin.readLineSync()!) * 0.45359237;
  print("Entetr your height in Inch");
  double height = double.parse(stdin.readLineSync()!) * 0.254;
  double bmi = weight * 100 / pow(height, 2);
  if (bmi < 18.5) {
    print("You are UnderWeight and Your BMI is ${bmi.toStringAsFixed(1)}");
  } else if (bmi >= 18.5 && bmi <= 25) {
    print("You are Normal and Your BMI is ${bmi.toStringAsFixed(1)}");
  } else if (bmi > 25 && bmi <= 30) {
    print("You are OverWeight and Your BMI is ${bmi.toStringAsFixed(1)}");
  } else {
    print("You are Obesity and Your BMI is ${bmi.toStringAsFixed(1)}");
  }
}
