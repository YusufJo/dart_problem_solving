import 'dart:io';

import 'package:ex_16/fuel_calculator.dart';

void main(List<String> arguments) {
  print('Welcome to Fuel liters calculator');
  final hours = _promptForInteger(
      'How many hours does your trip take (rounded to a whole number): ');
  print('Alright...');
  final avgSpeed = _promptForInteger(
      'What is the average speed during the trip (rounded to whole number): ');
  final result = calculateLiters(hours: hours, avgSpeed: avgSpeed);
  print(
      'Your trip would take at least ${result.toStringAsFixed(3)} liters of fuel.');
}

int _promptForInteger(String message) {
  late String input;
  do {
    print(message);
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      final number = int.tryParse(input);
      if (number != null) {
        return number;
      }
      print('You must enter a number. Please try again');
      continue;
    }
    print('Cannot receive an empty response. Please try again.');
  } while (true);
}
