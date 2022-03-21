import 'dart:io';

import 'package:ex_19/gaming_hours_tracker.dart';

void main(List<String> arguments) {
  print('Welcome to Gaming time tracker');
  List<int> startAndEndHours;
  do {
    print('Enter the start and end hours separated by commas \'i.e. 1,17\': ');
    startAndEndHours = _convertedList(stdin.readLineSync())
        .where((element) => element >= 0 && element <= 23)
        .toList();
    if (startAndEndHours.length == 2) {
      final result = getGamingHours(
          startHour: startAndEndHours[0], endHour: startAndEndHours[1]);
      print('Total gaming time is: $result hours');
      break;
    } else {
      print('Wrong entry. Please try again');
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
