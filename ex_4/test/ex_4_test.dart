import 'package:ex_4/divisor_finder.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Divisor Finder', () {
    testDivisors(number: 0, divisors: []);
    testDivisors(number: -10, divisors: [1, 2, 5, 10]);
    testDivisors(number: 12, divisors: [1, 2, 3, 4, 6, 12]);
    testDivisors(number: 26, divisors: [1, 2, 13, 26]);
    testDivisors(number: 100, divisors: [1, 2, 4, 5, 10, 20, 25, 50, 100]);
  });
}

@isTest
void testDivisors({required int number, required List<int> divisors}) {
  test('should return $divisors as the only divisors of $num', () {
    final result = findDivisorsOf(number);
    expect(result, divisors);
  });
}
