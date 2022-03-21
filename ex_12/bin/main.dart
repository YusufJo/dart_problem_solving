import 'dart:io';

import 'package:ex_12/duplicate_filter.dart';

void main(List<String> arguments) {
  print('Welcome to List filter');
  print('Enter a list on numbers separated by commas \'i.e. 1,2,3\': ');
  final numbers = _convertedList(stdin.readLineSync());
  final filteredNumbers = filterDuplicates(numbers);
  _reportResult(filteredNumbers);
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

void _reportResult(List<int> numbers) {
  if (numbers.isEmpty) {
    print('You did not enter any numbers!');
  } else if (numbers.length == 1) {
    print('You are left with only $numbers.');
  } else {
    print('Your filtered list contains: $numbers.');
  }
}
