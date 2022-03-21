import 'dart:io';
import 'dart:math';

import 'package:ex_15/cows_and_bulls.dart';

void main(List<String> arguments) {
  print('Welcome to Cows and Bulls game');
  print('Rules:\n\t- For each digit you guess correctly '
      '(face value & place value) you get a cow.\n\t- For each '
      'digit you guess correctly (face value only) you get a bull');
  print('Let\'s begin...');
  _runGameLoop();
}

void _runGameLoop() {
  final randomDigit = Random().nextInt(1000) + 1000;
  int attemptsNumber = 0;
  while (true) {
    attemptsNumber++;
    final userGuess = _promptForNumber();
    final result = getCowsAndBulls(random: randomDigit, guess: userGuess);
    _reportResult(attemptsNumber, result);
    if (_checkWonTheGame(result)) break;
  }
}

int _promptForNumber() {
  late String input;
  do {
    print('Now i have a number in mind. What do you think it is? ');
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      final number = int.tryParse(input);
      if (number != null && input.length == 4) {
        return number;
      }
      print('Wrong entry. Please enter a 4-digit number next time.');
      continue;
    }
    print('Cannot accept empty entries. Please try again');
  } while (true);
}

void _reportResult(int attemptsNumber, CowsAndBulls cowsAndBulls) {
  if (_checkWonTheGame(cowsAndBulls)) {
    print('Congrats! You got it after $attemptsNumber attempts');
  } else {
    print('Not there yet. You got ${cowsAndBulls.cows} cows and '
        '${cowsAndBulls.bulls} bulls so far.');
  }
}

bool _checkWonTheGame(CowsAndBulls cowsAndBulls) => cowsAndBulls.cows == 4;
