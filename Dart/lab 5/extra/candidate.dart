import 'dart:io';

class Candidate {
  List<Map<String, dynamic>> list = [];

  void getData({int? index}) {
    Map<String, dynamic> map = {};
    if (index != null) {
      map = list[index];
    }
    print("Enter Name of candidate");
    map['Name'] = stdin.readLineSync();
    print("Enter Salary of candidate");
    map['Salary'] = double.parse(stdin.readLineSync()!);
    print("Enter Designation of candidate");
    map['Designation'] = stdin.readLineSync();
    print("Enter Experience of candidate");
    map['Experience'] = double.parse(stdin.readLineSync()!);
    print("Candidate IsWorking?");
    map['IsWorking'] = int.parse(stdin.readLineSync()!) == 1;
    if (index == null) {
      list.add(map);
    } else {
      list[index] = map;
    }
  }

  void display() {
    for (int i = 0; i < list.length; i++) {
      Map<String, dynamic> map = list[i];
      print("Name of Candidate : ${map['Name']}");
      print("Salary of Candidate : ${map['Salary']}");
      print("Designation of Candidate : ${map['Designation']}");
      print("Experience of Candidate : ${map['Experience']}");
      print("Candidate IsWorking? : ${map['IsWorking']}");
    }
  }

  void searchUser(name, {Function? callback}) {
    for (int i = 0; i < list.length; i++) {
      if (list[i]['Name'].toString().toLowerCase() ==
          name.toString().toLowerCase()) {
        callback!(i);
        return;
      }
    }
    print("DATA IS NOT FOUNDED");
  }

  void deleteUser(name, {Function? callback}) {
    for (int i = 0; i < list.length; i++) {
      if (list[i]['Name'].toString().toLowerCase() ==
          name.toString().toLowerCase()) {
        list.removeAt(i);
        callback!(i);
        for (var j = 0; j < list.length; j++) {
          print("${list[j]['Name']}  $j");
        }
        return;
      }
    }
    print("USER NOT FOUNDED");
  }

  void editUser(name) {
    for (int i = 0; i < list.length; i++) {
      if (list[i]['Name'].toString().toLowerCase() ==
          name.toString().toLowerCase()) {
        print("Enter Value");
        getData(index: i);
      }
    }
    print("DATA IS NOT FOUNDED");
  }
}
