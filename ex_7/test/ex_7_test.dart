import 'package:ex_7/even_filter.dart';
import 'package:test/test.dart';

void main() {
  group('Even numbers filter', () {
    testEvenFilter(numbers: [], expected: []);
    testEvenFilter(numbers: [1], expected: []);
    testEvenFilter(numbers: [2], expected: [2]);
    testEvenFilter(numbers: [1, 2, 3, 4], expected: [2, 4]);
  });
}

void testEvenFilter({required List<int> numbers, required List<int> expected}) {
  test('should return $expected as the only even numbers in $numbers', () {
    final result = filterEvens(numbers);
    expect(result, expected);
  });
}
