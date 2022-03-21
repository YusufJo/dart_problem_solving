import 'dart:io';

import 'package:ex_8/rock_paper_scissors.dart';

void main(List<String> arguments) {
  print('Welcome to Rock-Paper-Scissors');
  print('You are playing against a computer.');
  _runGameLoop();
}

void _runGameLoop() {
  String? playAgainInput;
  do {
    final input = _promptForInput();
    final user = _convertToChoice(input);
    final computer = _getRandomChoice();
    final gameState = checkState(user, computer);
    _reportState(computer, gameState);
    print('play again? y or n: ');
    playAgainInput = stdin.readLineSync();
    if (playAgainInput == null || playAgainInput.toLowerCase() == 'n') {
      break;
    }
  } while (true);
}

String _promptForInput() {
  String? input;
  do {
    print('Enter R for Rock, P for Paper, S for Scissors: ');
    input = stdin.readLineSync();
    if (input != null &&
        (input.toLowerCase() == 'r' ||
            input.toLowerCase() == 'p' ||
            input.toLowerCase() == 's')) {
      break;
    } else {
      print('Wrong choice, please try again.');
    }
  } while (true);
  return input.toLowerCase();
}

Choice _convertToChoice(String input) {
  switch (input) {
    case 'r':
      return Choice.rock;
    case 'p':
      return Choice.paper;
    case 's':
      return Choice.scissors;
    default:
      throw UnimplementedError('Choice incorrect');
  }
}

Choice _getRandomChoice() {
  final choices = [...Choice.values];
  choices.shuffle();
  return choices.first;
}

void _reportState(Choice computerChoice, GameState state) {
  if (state == GameState.draw) {
    print('Draw, both of you chose ${computerChoice.name}');
  } else {
    if (state == GameState.playerOneWon) {
      print('You won! Computer chose ${computerChoice.name}');
    } else {
      print('You lost :( Computer chose ${computerChoice.name}');
    }
  }
}
