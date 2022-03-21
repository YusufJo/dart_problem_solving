import 'package:ex_5/intersection.dart';
import 'package:meta/meta.dart';
import 'package:test/test.dart';

void main() {
  group('Intersection between two lists with no duplicates', () {
    testIntersection(first: [], second: [], expected: []);
    testIntersection(first: [], second: [1], expected: []);
    testIntersection(first: [1, 1, 1], second: [1, 1, 1], expected: [1]);
    testIntersection(first: [1, 2, 3], second: [3, 4, 5], expected: [3]);
  });
}

@isTest
void testIntersection(
    {required List<int> first,
    required List<int> second,
    required List<int> expected}) {
  test(
      'should return $expected as the common list of numbers between $first, and $second',
      () {
    final result = findIntersectedElements(first, second);
    expect(result, expected);
  });
}
