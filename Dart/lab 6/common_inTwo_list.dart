import 'dart:io';

void main(List<String> args) {
  List<int> list1 = [];
  List<int> list2 = [];
  List<int> list3 = [];
  bool flag = true;
  print("Enter Integer Number In List 1 \nEnter Null for Exit loop");

  while (flag != false) {
    String num = stdin.readLineSync()!;
    if (num != "") {
      list1.add(int.parse(num));
    } else {
      break;
    }
  }

  print("Enter Integer Number In List 2 \nEnter Null for Exit loop");

  while (true) {
    String num = stdin.readLineSync()!;
    if (num != "") {
      list2.add(int.parse(num));
    } else {
      break;
    }
  }

  for (int i = 0; i < list1.length; i++) {
    for (int j = 0; j < list2.length; j++) {
      if (list1[i] == list2[j] && !list3.any((temp) => temp == list1[i])) {
        list3.add(list1[i]);
      }
    }
  }
  print("Common Element Between Two list is : ");
  list3.forEach((element) {
    stdout.write("$element  ");
  });
  // final lists = [
  //   [1, 2, 3, 55, 7, 99, 21],
  //   [1, 4, 7, 65, 99, 20, 21],
  //   [0, 2, 6, 7, 21, 99, 26]
  // ];

  // final commonElements =
  //     lists.fold<Set>(lists.first.toSet(), (a, b) => a.intersection(b.toSet()));
  // commonElements.forEach((element) {
  //   print("$element");
  // });
}
