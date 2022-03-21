import 'package:ex_18/even_counter.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Even numbers calculator', () {
    testEvenNumbersCounter(numbers: [], expected: 0);
    testEvenNumbersCounter(numbers: [1], expected: 0);
    testEvenNumbersCounter(numbers: [2], expected: 1);
    testEvenNumbersCounter(numbers: [1, 2, 3, 4, 5], expected: 2);
    testEvenNumbersCounter(numbers: [2, 4, 6, 8, 10], expected: 5);
  });
}

@isTest
void testEvenNumbersCounter({
  required List<int> numbers,
  required int expected,
}) {
  test('should return $expected as the number of even numbers in $numbers', () {
    final result = countEvenNumbers(numbers);
    expect(result, expected);
  });
}
