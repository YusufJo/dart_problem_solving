import 'package:ex_1/age_calculator.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:meta/meta.dart';

void main() {
  group('Age Calculator', () {
    testAge(age: 100, expectedRemainingYearsTill100: 0);
    testAge(age: 99, expectedRemainingYearsTill100: 1);
    testAge(age: 50, expectedRemainingYearsTill100: 50);
    testAge(age: 0, expectedRemainingYearsTill100: 100);
  });
}

@isTest
void testAge({required int age, required int expectedRemainingYearsTill100}) {
  test('should return $expectedRemainingYearsTill100 when age is $age', () {
    final actualResult = getRemainingYearsTill100(age);
    expect(actualResult, expectedRemainingYearsTill100);
  });
}
