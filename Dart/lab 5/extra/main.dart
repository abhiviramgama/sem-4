import 'dart:io';

import 'candidate.dart';

void main(List<String> args) {
  Candidate candidate = Candidate();
  int ch;
  print("1.getData \n2.display \n3.Search User \n4.Delete \n5.Update \n6.Exit");
  ch = int.parse(stdin.readLineSync()!);
  while (ch != 6) {
    switch (ch) {
      case 1:
        candidate.getData();
        break;
      case 2:
        candidate.display();
        break;
      case 3:
        print("Enter Name of candidate that you want search");
        candidate.searchUser(stdin.readLineSync()!, callback: (i) {
          if (i != null) {
            print("DATA FOUNDED AT INDEX : $i");
          }
        });
        break;
      case 4:
        print("ENTER NAME OF CANDIDATE YOU WANT TO DELETE");
        candidate.deleteUser(stdin.readLineSync()!, callback: (i) {
          print("USER DELETED AT INDEX : $i");
        });
        break;
      case 5:
        print("ENTER NAME OF CANDIDATE WHOSE DATA YOU WANT CHANGE");
        candidate.editUser(stdin.readLineSync()!);
        break;
      default:
        print("INVALID CHOICE");
    }
    print(
        "1.getData \n2.display \n3.Search User \n4.Delete \n5.Update \n6.Exit");
    ch = int.parse(stdin.readLineSync()!);
  }
}
