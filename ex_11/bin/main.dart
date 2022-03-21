import 'dart:io';

import 'package:ex_11/filter_first_last.dart';

void main(List<String> arguments) {
  print('Welcome to First-Last filter');
  print('Enter a list of numbers separated by commas \'i.e. 1,2,3\': ');
  final numbers = _convertedList(stdin.readLineSync());
  final firstAndLast = getFirstAndLast(numbers);
  _reportResult(firstAndLast);
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

void _reportResult(List<int> firstAndLast) {
  if (firstAndLast.isEmpty) {
    print('No numbers were entered');
  } else if (firstAndLast.length == 1) {
    print('Only one number was entered: $firstAndLast');
  } else {
    print('The first and last numbers are $firstAndLast');
  }
}
