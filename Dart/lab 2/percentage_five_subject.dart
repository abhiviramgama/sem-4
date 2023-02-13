import 'dart:io';

void main(List<String> args) {
  List<int> marks = [];
  List<String> subject = [
    "Math",
    "Physics",
    "Chemistry",
    "English",
    "Computer"
  ];
  List<String> failed = [];
  int total = 0;
  for (int i = 0; i < 5; i++) {
    print("Enter Mark of ${subject[i]}");
    marks.add(int.parse(stdin.readLineSync()!));
    total = total + marks[i];
    if (marks[i] < 35) {
      failed.add(subject[i]);
    }
  }
  double percentage = total / 5;
  if (failed.length == 0) {
    if (percentage >= 35 && percentage < 45) {
      print("You passed with Pass class and you get $percentage%");
    } else if (percentage >= 45 && percentage < 60) {
      print("You passed with Second class and you get $percentage%");
    } else if (percentage >= 60 && percentage < 70) {
      print("You passed with First class and you get $percentage%");
    } else if (percentage > 70) {
      print("You passed with Distinction class and you get $percentage%");
    } else {
      print("Percentage can't come more than 100%");
    }
  } else {
    print("You are Failed in");
    for (int i = 0; i != failed.length; i++) {
      print(failed[i]);
    }
  }
}
