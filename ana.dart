import 'dart:io';

void main() {
  print("Enter the First String");
  String s1 = stdin.readLineSync()!;
  print("Enter the Second String");
  String s2 = stdin.readLineSync()!;
  List<String> list1 = s1.split('');
  List<String> list2 = s2.split('');
  //List<String> list1 = ["a", "m", "i", "t"];
  //List<String> list2 = ["a", "j", "a", "y"];
  //List<String> list1 = ["s", "i", "l", "e", "n", "t"];
  //List<String> list2 = ["l", "i", "s", "t", "e", "n"];
  if (list1.length != list2.length) {
    print("Not an Anagram String....");
    return;
  }
  list1.sort();
  list2.sort();
  print(list1);
  print(list2);
  int len = list1.length;
  for (int i = 0; i < len; i++) {
    if (list1[i] != list2[i]) {
      print("Not an Anagram String....");
      return;
    }
  }
  print("Anagram String.... ");
}
