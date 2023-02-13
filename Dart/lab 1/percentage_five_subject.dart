import 'dart:io';

void main(List<String> args) {
  print("Enter value of Math");
  int math = int.parse(stdin.readLineSync()!);
  print("Enter value of English");
  int eng = int.parse(stdin.readLineSync()!);
  print("Enter value of Physics");
  int phy = int.parse(stdin.readLineSync()!);
  print("Enter value of Chemistry");
  int chem = int.parse(stdin.readLineSync()!);
  print("Enter value of Computer");
  int com = int.parse(stdin.readLineSync()!);

  double per = (math + eng + phy + chem + com) / 5;
  print("percentage of subjects $per%");
}
