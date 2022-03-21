import 'dart:io';

import 'package:ex_3/number_filter.dart';

void main(List<String> arguments) {
  print('Welcome to numbers filter');
  print('Enter a list of numbers separated by commas \'i.e. 1,2,3: ');
  final input = _convertedList(stdin.readLineSync());
  final filteredList = lessThan5(input);
  if (filteredList.isNotEmpty) {
    print('Numbers less than 5 are: $filteredList');
  } else {
    print('No numbers less than 5!');
  }
}

List<num> _convertedList(String? input) {
  if (input == null) return [];
  return input
      .trim()
      .replaceAll(' ', '')
      .split(RegExp(r',').pattern)
      .where((element) => double.tryParse(element) != null)
      .map((e) => double.parse(e))
      .toList();
}
