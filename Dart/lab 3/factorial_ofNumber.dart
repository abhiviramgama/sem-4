import 'dart:io';

void main(List<String> args) {
  print("Enter number for find factorial");
  int num = int.parse(stdin.readLineSync()!);
  print("factoril of $num : ${factorial(num)}");
}

int factorial(num) {
  int fac = 1;
  for (int i = 1; i <= num; i++) {
    fac = fac * i;
  }
  return fac;
}
