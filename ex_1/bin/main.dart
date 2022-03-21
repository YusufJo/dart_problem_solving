import 'dart:io';

import 'package:ex_1/age_calculator.dart';

void main(List<String> arguments) {
  print('Welcome to age calculator\n');
  print('What is your name? ');
  final name = stdin.readLineSync();
  int? age;
  do {
    print('What\'s your age, $name? ');
    age = int.tryParse(stdin.readLineSync() ?? '');
    if (age != null && age > 0) {
      break;
    } else {
      print('Wrong age, please try again.');
    }
  } while (true);
  final remainingYears = getRemainingYearsTill100(age);
  print('You have $remainingYears years left to be 100 yrs!');
}
