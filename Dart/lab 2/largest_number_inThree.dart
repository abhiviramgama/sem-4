import 'dart:io';

void main(List<String> args) {
  List<int> num = [];
  for (int i = 1; i <= 3; i++) {
    print("please enter number $i");
    num.add(int.parse(stdin.readLineSync()!));
  }
  if (num[0] > num[1] && num[0] > num[2]) {
    print("${num[0]} is largest number");
  } else if (num[1] > num[0] && num[1] > num[2]) {
    print("${num[1]} is largest number");
  } else {
    print("${num[2]} is largest number");
  }
}
