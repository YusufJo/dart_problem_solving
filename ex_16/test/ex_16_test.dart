import 'package:ex_16/fuel_calculator.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Fuel Calculator', () {
    testFuelLiters(hours: 0, avgSpeed: 0, expected: 0);
    testFuelLiters(hours: 1, avgSpeed: 12, expected: 1);
    testFuelLiters(hours: 2, avgSpeed: 24, expected: 4);
    testFuelLiters(hours: 3, avgSpeed: 100, expected: 25);
    testFuelLiters(hours: 4, avgSpeed: 103, expected: 34.444);
  });
}

@isTest
void testFuelLiters(
    {required int hours, required int avgSpeed, required double expected}) {
  test(
      'should return $expected for a $hours hours trip at $avgSpeed km/h speed',
      () {
    final result = calculateLiters(hours: hours, avgSpeed: avgSpeed);
    expect(result - expected < 0.001, true);
  });
}
