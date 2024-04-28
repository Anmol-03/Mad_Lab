import 'dart:io';

// Function to calculate GCD
int calculateGCD(int a, int b) {
  if (b == 0) {
    return a;
  } else {
    return calculateGCD(b, a % b);
  }
}

// Function to calculate LCM
int calculateLCM(int a, int b) {
  return (a * b) ~/ calculateGCD(a, b);
}

void main() {
  stdout.write("Enter the first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int gcd = calculateGCD(num1, num2);
  int lcm = calculateLCM(num1, num2);

  print("GCD of $num1 and $num2 is: $gcd");
  print("LCM of $num1 and $num2 is: $lcm");
}
