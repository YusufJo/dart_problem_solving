import 'dart:io';

import 'package:ex_10/prime_checker.dart';

void main(List<String> arguments) {
  print('Welcome to Prime numbers checker');
  final number = _promptForNumber();
  final result = checkIsPrime(number) ? 'Is' : 'Is NOT';
  print('$number $result prime.');
}

int _promptForNumber() {
  String? input;
  int? number;
  do {
    print('Enter a whole number: ');
    input = stdin.readLineSync();
    if (input != null) {
      number = int.tryParse(input);
      if (number != null) {
        return number;
      } else {
        print('Wrong number, Please try again.');
      }
    } else {
      print('Wrong entry, Please try again.');
    }
  } while (true);
}
