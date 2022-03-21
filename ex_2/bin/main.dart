import 'dart:io';

import 'package:ex_2/even_odd_checker.dart';

void main(List<String> arguments) {
  print('Welcome to number checker');
  int? number;
  do {
    print('Enter a number: ');
    number = int.tryParse(stdin.readLineSync() ?? '');
    if (number != null) {
      break;
    } else {
      print('Wrong entry, please try again!');
    }
  } while (true);
  final result = checkIsEven(number) ? 'Even' : 'Odd';
  print('$number is $result.');
}
