import 'dart:io';

void main(List<String> args) {
  print("Enter value of fahrenheit");
  double fahrenheit = double.parse(stdin.readLineSync()!);
  double Celcious = ((fahrenheit - 32) * 5 / 9);
  print("Celsius is " + Celcious.toString());
}
