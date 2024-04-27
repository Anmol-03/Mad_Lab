import 'dart:io';

void main() {
  stdout.write('Enter an integer number: ');
  int number = int.parse(stdin.readLineSync()!);

  print(numberToWords(number));
}

String numberToWords(int number) {
  if (number == 0) {
    return 'Zero';
  }

  final List<String> units = [
    '',
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine'
  ];

  final List<String> teens = [
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen'
  ];

  final List<String> tens = [
    '',
    '',
    'Twenty',
    'Thirty',
    'Forty',
    'Fifty',
    'Sixty',
    'Seventy',
    'Eighty',
    'Ninety'
  ];

  String words = '';

  if (number >= 1000) {
    words += '${units[number ~/ 1000]} Thousand ';
    number %= 1000;
  }

  if (number >= 100) {
    words += '${units[number ~/ 100]} Hundred ';
    number %= 100;
  }

  if (number >= 10 && number <= 19) {
    words += '${teens[number - 10]} ';
    number = 0;
  } else if (number >= 20) {
    words += '${tens[number ~/ 10]} ';
    number %= 10;
  }

  if (number > 0) {
    words += '${units[number]} ';
  }

  return words.trim();
}
