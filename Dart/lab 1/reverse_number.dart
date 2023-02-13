import 'dart:io';

void main(List<String> args) {
  int rem, rev = 0;
  print("Enter number for reverse");
  int num = int.parse(stdin.readLineSync()!);

  while (num > 0) {
    rem = num % 10;
    rev = (rev * 10) + rem;
    num = (num / 10).toInt();
  }
  print("Reverse number is $rev");
}
