import 'package:ex_20/months.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Month number to name', () {
    testMonthName(number: 1, expected: 'January');
    testMonthName(number: 2, expected: 'February');
    testMonthName(number: 3, expected: 'March');
    testMonthName(number: 4, expected: 'April');
    testMonthName(number: 5, expected: 'May');
    testMonthName(number: 6, expected: 'June');
    testMonthName(number: 7, expected: 'July');
    testMonthName(number: 8, expected: 'August');
    testMonthName(number: 9, expected: 'September');
    testMonthName(number: 10, expected: 'October');
    testMonthName(number: 11, expected: 'November');
    testMonthName(number: 12, expected: 'December');
  });
}

@isTest
void testMonthName({required int number, required String expected}) {
  test('should return $expected as month number $number', () {
    final result = getMonthName(number);
    expect(result, expected);
  });
}
