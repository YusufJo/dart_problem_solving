import 'dart:io';

import 'package:ex_5/intersection.dart';

void main(List<String> arguments) {
  print('Welcome to Lists intersection finder');
  print('Enter a list of numbers separated by commas \'i.e. 1,2,3\': ');
  final firstList = _convertedList(stdin.readLineSync());
  print('Sweet! Now enter a second list: ');
  final secondList = _convertedList(stdin.readLineSync());
  final matches = findIntersectedElements(firstList, secondList);
  if (matches.isEmpty) {
    print('No matches found.');
  } else {
    print('Matches are: $matches');
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
