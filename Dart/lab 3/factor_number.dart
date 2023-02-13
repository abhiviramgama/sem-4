import 'dart:io';

void main(List<String> args) {
  print("Enter number for find factorial");
  int num = int.parse(stdin.readLineSync()!);
  print("factoril of $num :");
  List temp = factorial(num);
  for (int i = 0; i < temp.length; i++) {
    print(temp[i]);
  }
}

List factorial(num) {
  List<int> list = [];
  for (int i = 1; i <= num; i++) {
    if (num % i == 0) {
      list.add(i);
    }
  }
  return list;
}
