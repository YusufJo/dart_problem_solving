import 'dart:io';

import 'package:ex_4/divisor_finder.dart';

void main(List<String> arguments) {
  print('Welcome to Divisors finder');
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
  final divisors = findDivisorsOf(number);
  if (divisors.isEmpty) {
    print('No divisors found for $number');
  } else {
    print('Divisors of $number are: $divisors');
  }
}
