import 'dart:io';

void main() {
  print("Enter the Name");
  String name = stdin.readLineSync()!; // Sync Blocking
  print("Your Name is $name");
  print("Enter the Salary");
  double salary = double.parse(stdin.readLineSync()!);
  print("Salary is $salary");
}
