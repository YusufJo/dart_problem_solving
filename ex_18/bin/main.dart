import 'dart:io';

import 'package:ex_18/even_counter.dart';

void main(List<String> arguments) {
  print('Welcome to even numbers counter');
  List<int> numbers = [];
  do {
    print('Enter five numbers separated by commas \'i.e. 1,2,3,4,5\': ');
    numbers = _convertedList(stdin.readLineSync());
    if (numbers.length == 5) {
      final result = countEvenNumbers(numbers);
      if (result == 0) {
        print('No even numbers found');
      } else {
        print('Found $result even number/s');
      }
      break;
    } else {
      print('Please enter exactly 5 numbers.');
    }
  } while (true);
}

List<int> _convertedList(String? input) {
  if (input == null) return [];
  return input
      .trim()
      .replaceAll(' ', '')
      .split(RegExp(r',').pattern)
      .where((element) => int.tryParse(element) != null)
      .map((e) => int.parse(e))
      .toList();
}
