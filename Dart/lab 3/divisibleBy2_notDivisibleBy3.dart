import 'dart:io';

void main(List<String> args) {
  print("Enter number small number");
  int num1 = int.parse(stdin.readLineSync()!);
  print("Enter number big number");
  int num2 = int.parse(stdin.readLineSync()!);
  divisibleBy2Not3(num1, num2);
}

void divisibleBy2Not3(int num1, int num2) {
  print(
      "Number between $num1 and $num2 which is divisible by 2 but not divisible by 3 is: ");
  for (int i = num1; i <= num2; i++) {
    if (i % 2 == 0) {
      if (i % 3 != 0) {
        print(i);
      }
    }
  }
}
