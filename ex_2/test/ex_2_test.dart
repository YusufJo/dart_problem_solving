import 'package:ex_2/even_odd_checker.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Even Odd checker', () {
    testIsEven(number: -10101, isEven: false);
    testIsEven(number: -1, isEven: false);
    testIsEven(number: 0, isEven: true);
    testIsEven(number: 1, isEven: false);
    testIsEven(number: 2, isEven: true);
    testIsEven(number: 3, isEven: false);
    testIsEven(number: 100, isEven: true);
    testIsEven(number: 100000001, isEven: false);
  });
}

@isTest
void testIsEven({required int number, required bool isEven}) {
  test('should return true when $number is even', () {
    final result = checkIsEven(number);
    expect(result, isEven);
  });
}
