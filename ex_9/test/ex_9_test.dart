import 'package:ex_9/guess_checker.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Guess Comparison', () {
    testGuessComparison(number: 100, guess: 100, expected: 0);
    testGuessComparison(number: 10, guess: 20, expected: 10);
    testGuessComparison(number: -10, guess: 10, expected: 20);
    testGuessComparison(number: 0, guess: 0, expected: 0);
  });
}

@isTest
void testGuessComparison(
    {required int number, required int guess, required int expected}) {
  test('should return $expected when $number is compared to $guess', () {
    final result = compareGuess(number, guess);
    expect(result, expected);
  });
}
