import 'dart:io';

import 'package:ex_7/even_filter.dart';

void main(List<String> arguments) {
  print('Welcome to Even numbers filter');
  print('Enter a list of numbers separated by commas \'i.e. 1,2,3\': ');
  final numbers = _convertedList(stdin.readLineSync());
  final evenNumbers = filterEvens(numbers);
  if (evenNumbers.isEmpty) {
    print('No even numbers found.');
  } else {
    print('Evens found: $evenNumbers');
  }
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
