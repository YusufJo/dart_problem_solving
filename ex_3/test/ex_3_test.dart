import 'package:ex_3/number_filter.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:meta/meta.dart';

void main() {
  group('Numbers less than 5 in list', () {
    testNumbersLessThanFiveFilter(numbers: [1, 5, 12, 100], expected: [1]);
    testNumbersLessThanFiveFilter(numbers: [100, 200, 300], expected: []);
    testNumbersLessThanFiveFilter(
        numbers: [-1, -2, -3], expected: [-1, -2, -3]);
    testNumbersLessThanFiveFilter(numbers: [], expected: []);
  });
}

@isTest
void testNumbersLessThanFiveFilter(
    {required List<num> numbers, required List<num> expected}) {
  test(
      'should return $expected as the intersection of $numbers whose values are less than 5',
      () {
    final result = lessThan5(numbers);
    expect(result, expected);
  });
}
