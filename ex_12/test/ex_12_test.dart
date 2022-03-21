import 'package:ex_12/duplicate_filter.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('List duplicates filter', () {
    testFilterDuplicates(numbers: [], expected: []);
    testFilterDuplicates(numbers: [1], expected: [1]);
    testFilterDuplicates(numbers: [1, 1, 1, 1], expected: [1]);
    testFilterDuplicates(numbers: [1, 1, 2, 2], expected: [1, 2]);
    testFilterDuplicates(numbers: [1, 2, 2, 3], expected: [1, 2, 3]);
  });
}

@isTest
void testFilterDuplicates(
    {required List<int> numbers, required List<int> expected}) {
  test('should return $expected after filtering the duplicates of $numbers',
      () {
    final result = filterDuplicates(numbers);
    expect(result, expected);
  });
}
