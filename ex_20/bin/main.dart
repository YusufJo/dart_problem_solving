import 'dart:io';

import 'package:ex_20/months.dart';

void main(List<String> arguments) {
  print('Welcome to Month number to Month name');
  final number = _promptForMonthNumber;
  final name = getMonthName(number);
  print('Month number $number is $name');
}

int get _promptForMonthNumber {
  late String input;
  do {
    print('Enter month number (1~12): ');
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      final parsed = int.tryParse(input);
      if (parsed != null) {
        if (parsed >= 1 && parsed <= 12) {
          return parsed;
        }
        print('Month number should be in the range 1 to 12.');
        continue;
      }
      print('Wrong entry. Please enter a number.');
      continue;
    }
    print('No numbers were entered, please try again');
  } while (true);
}
