import 'dart:io';

void main(List<String> args) {
  print("Enter value of first number");
  double a = double.parse(stdin.readLineSync()!);
  print("Enter value of second number");
  double b = double.parse(stdin.readLineSync()!);
  print("Addition of two number is ${(a + b).toStringAsFixed(2)}");
}
