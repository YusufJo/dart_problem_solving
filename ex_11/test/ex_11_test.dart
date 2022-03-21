import 'package:ex_11/filter_first_last.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Filter first and last', () {
    testFirstAndLast(numbers: [], expected: []);
    testFirstAndLast(numbers: [1], expected: [1]);
    testFirstAndLast(numbers: [1, -1], expected: [1, -1]);
    testFirstAndLast(numbers: [1, 2, 3], expected: [1, 3]);
  });
}

@isTest
void testFirstAndLast(
    {required List<int> numbers, required List<int> expected}) {
  test(
      'should return $expected as the first and last numbers of '
      '$numbers respectively', () {
    final result = getFirstAndLast(numbers);
    expect(result, expected);
  });
}
