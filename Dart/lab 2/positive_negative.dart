import 'dart:io';

void main(List<String> args) {
  print("Please enter numbrer for check positive or negative");
  double num = double.parse(stdin.readLineSync()!);
  if (num >= 0) {
    print("Number is positive");
  } else {
    print("Number is Negative");
  }
}
