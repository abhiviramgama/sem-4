import 'dart:io';

void main(List<String> args) {
  print("Enter the value in meter");
  double meter = double.parse(stdin.readLineSync()!);
  double feet = meter * 3.28084;
  print("Length in feet is ${feet.toStringAsFixed(5)}");
}
