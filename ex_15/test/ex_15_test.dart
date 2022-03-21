import 'package:ex_15/cows_and_bulls.dart';
import 'package:meta/meta.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Cows and bulls', () {
    testCowsAndBulls(
        random: 1234, guess: 5678, expected: CowsAndBulls(cows: 0, bulls: 0));
    testCowsAndBulls(
        random: 1234, guess: 1234, expected: CowsAndBulls(cows: 4, bulls: 0));
    testCowsAndBulls(
        random: 1111, guess: 1111, expected: CowsAndBulls(cows: 4, bulls: 0));
    testCowsAndBulls(
        random: 1234, guess: 4321, expected: CowsAndBulls(cows: 0, bulls: 4));
    testCowsAndBulls(
        random: 1234, guess: 1256, expected: CowsAndBulls(cows: 2, bulls: 0));
    testCowsAndBulls(
        random: 1234, guess: 1432, expected: CowsAndBulls(cows: 2, bulls: 2));
    testCowsAndBulls(
        random: 1123, guess: 1231, expected: CowsAndBulls(cows: 1, bulls: 3));
    testCowsAndBulls(
        random: 1231, guess: 1311, expected: CowsAndBulls(cows: 2, bulls: 1));
    testCowsAndBulls(
        random: 1313, guess: 1331, expected: CowsAndBulls(cows: 2, bulls: 2));
  });
}

@isTest
void testCowsAndBulls(
    {required int random, required int guess, required CowsAndBulls expected}) {
  test(
      'should return ${expected.cows} cows and '
      '${expected.bulls} bulls when word \'$random\' is guessed as \'$guess\'',
      () {
    final result = getCowsAndBulls(random: random, guess: guess);
    expect(result, expected);
  });
}
