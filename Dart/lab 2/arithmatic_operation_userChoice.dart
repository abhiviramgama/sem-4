import 'dart:io';

void main(List<String> args) {
  double? ans;
  print("Enter number 1 for arithmatic operation");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter number 2 for arithmatic operation");
  double num2 = double.parse(stdin.readLineSync()!);
  print("+ Addition \n- Subtraction \n* Multiplication \n/ Division");
  String choice = stdin.readLineSync()!;
  // using if
  /*if (choice == '+') {
    ans = num1 + num2;
  }
  if (choice == '-') {
    ans = num1 - num2;
  }
  if (choice == '*') {
    ans = num1 * num2;
  }
  if (choice == '/') {
    ans = num1 / num2;
  }
  if (ans == null) {
    print("Invalid Choice");
  } else {
    print("Answer is ${ans.toStringAsFixed(2)}");
  }*/

  // using else if
  if (choice == '+') {
    ans = num1 + num2;
    print("Answer is ${ans.toStringAsFixed(2)}");
  } else if (choice == '-') {
    ans = num1 - num2;
    print("Answer is ${ans.toStringAsFixed(2)}");
  } else if (choice == '*') {
    ans = num1 * num2;
    print("Answer is ${ans.toStringAsFixed(2)}");
  } else if (choice == '/') {
    ans = num1 / num2;
    print("Answer is ${ans.toStringAsFixed(2)}");
  } else {
    print("Invalid choice");
  }

  //using switch

  /* switch (choice) {
    case '+':
      ans = num1 + num2;
      break;
    case '-':
      ans = num1 - num2;
      break;
    case '*':
      ans = num1 * num2;
      break;
    case '/':
      ans = num1 / num2;
      break;
    default:
      print("Invalid Choice");
      break;
  }
  if (ans != null) {
    print("Answer is : ${ans.toStringAsFixed(2)}");
  }*/
}
