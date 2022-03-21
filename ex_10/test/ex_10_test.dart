import 'package:ex_10/prime_checker.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Prime Checker', () {
    testPrimeNumber(number: 1, isPrime: false);
    testPrimeNumber(number: 2, isPrime: true);
    testPrimeNumber(number: 3, isPrime: true);
    testPrimeNumber(number: 4, isPrime: false);
    testPrimeNumber(number: 857, isPrime: true);
    testPrimeNumber(number: 1000, isPrime: false);
  });
}

@isTest
void testPrimeNumber({required int number, required bool isPrime}) {
  test('should return $isPrime for $number', () {
    final result = checkIsPrime(number);
    expect(result, isPrime);
  });
}
