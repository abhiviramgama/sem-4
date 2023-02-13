import 'dart:io';

void main(List<String> args) {
  print("Enter Number 1");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter Number 2");
  double num2 = double.parse(stdin.readLineSync()!);
  print("Enter Number 3");
  double num3 = double.parse(stdin.readLineSync()!);
  num1 > num2
      ? num1 > num3
          ? print("Number 1 Largest")
          : print("Number 3 Largest")
      : num2 > num3
          ? print("Number 2 Largest")
          : print("Number 3 Largest");
}
