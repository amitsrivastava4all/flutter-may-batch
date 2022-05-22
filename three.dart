import 'dart:io';

//import 'dart:core'; // By Default import
void main() {
  int firstNumber;
  int secondNumber;
  print("Enter the First Number");
  // String to int conversion (int.parse)
  // stdin.readLineSync() read from a keyboard
  // String? data  = stdin.readLineSync();
  // firstNumber = int.parse(data!);
  firstNumber = int.parse(stdin.readLineSync()!);
  print("Enter the Second Number");
  secondNumber = int.parse(stdin.readLineSync()!);
  int result = firstNumber + secondNumber;
  print("Sum is $result");
}
