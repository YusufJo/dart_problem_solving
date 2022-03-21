import 'package:ex_8/rock_paper_scissors.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Rock Paper Scissors', () {
    testRockPaperScissors(
        playerOneChoice: Choice.rock,
        playerTwoChoice: Choice.rock,
        expected: GameState.draw);
    testRockPaperScissors(
        playerOneChoice: Choice.paper,
        playerTwoChoice: Choice.paper,
        expected: GameState.draw);
    testRockPaperScissors(
        playerOneChoice: Choice.scissors,
        playerTwoChoice: Choice.scissors,
        expected: GameState.draw);
    testRockPaperScissors(
        playerOneChoice: Choice.rock,
        playerTwoChoice: Choice.paper,
        expected: GameState.playerTwoWon);
    testRockPaperScissors(
        playerOneChoice: Choice.paper,
        playerTwoChoice: Choice.rock,
        expected: GameState.playerOneWon);
    testRockPaperScissors(
        playerOneChoice: Choice.rock,
        playerTwoChoice: Choice.scissors,
        expected: GameState.playerOneWon);
    testRockPaperScissors(
        playerOneChoice: Choice.scissors,
        playerTwoChoice: Choice.rock,
        expected: GameState.playerTwoWon);
    testRockPaperScissors(
        playerOneChoice: Choice.paper,
        playerTwoChoice: Choice.scissors,
        expected: GameState.playerTwoWon);
    testRockPaperScissors(
        playerOneChoice: Choice.scissors,
        playerTwoChoice: Choice.paper,
        expected: GameState.playerOneWon);
  });
}

@isTest
void testRockPaperScissors({
  required Choice playerOneChoice,
  required Choice playerTwoChoice,
  required GameState expected,
}) {
  test(
      'should return ${expected.name} when player one chooses '
      '${playerOneChoice.name} and player two chooses ${playerTwoChoice.name}',
      () {
    final result = checkState(playerOneChoice, playerTwoChoice);
    expect(result, expected);
  });
}
