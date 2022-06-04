import 'dart:math';

void main() {
  int num = 12345;
  int num2 = num; // make a copy of this
  // number of digit count logic
  int countDigit = 0;
  while (num != 0) {
    countDigit++;
    num = num ~/ 10;
  }
  //print(countDigit);

  while (num2 != 0) {
    countDigit--;
    int power = pow(10, countDigit).toInt();
    print(num2 ~/ power);
    num2 = num2 % power;
  }
}
