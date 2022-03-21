import 'dart:io';
import 'dart:math';

import 'package:ex_9/guess_checker.dart';

void main(List<String> arguments) {
  print('Welcome to Guess the number game');
  runGameLoop();
}

void runGameLoop() {
  bool numberIsFound = false;
  int numberOfTrials = 0;
  final number = _generateRandomNumber();
  while (!numberIsFound) {
    final guess = _promptForGuess(1, 100);
    reportGuessStatus(number, guess);
    numberIsFound = _updateGuessResult(guess, number);
    numberOfTrials++;
  }
  print('Got it after $numberOfTrials trials!');
}

int _generateRandomNumber() => Random().nextInt(100) + 1;

bool _updateGuessResult(int guess, int number) => guess == number;

int _promptForGuess(int min, int max) {
  String? input;
  do {
    print('Enter a number between 1 to 100 inclusive: ');
    input = stdin.readLineSync();
    if (input != null) {
      final num = int.tryParse(input);
      if (num != null && num >= min && num <= max) {
        return num;
      } else {
        print('Number is not in 1 to 100 range. Please try again.');
      }
    }
  } while (true);
}

void reportGuessStatus(int number, int guess) {
  final comparison = compareGuess(number, guess);
  if (comparison == 0) {
    print('You guessed it correct!');
  } else if (comparison > 0) {
    print('Your guess is too high');
  } else {
    print('Your guess is too low');
  }
}
