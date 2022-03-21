import 'package:ex_19/gaming_hours_tracker.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Gaming hours tracker', () {
    testGamingTimeTracker(startHour: 0, endHour: 0, expected: 24);
    testGamingTimeTracker(startHour: 12, endHour: 0, expected: 12);
    testGamingTimeTracker(startHour: 20, endHour: 0, expected: 4);
    testGamingTimeTracker(startHour: 5, endHour: 1, expected: 20);
  });
}

@isTest
void testGamingTimeTracker({
  required int startHour,
  required int endHour,
  required int expected,
}) {
  test(
      'should return $expected when player starts at '
      '$startHour:00 and finishes at $endHour:00', () {
    final result = getGamingHours(startHour: startHour, endHour: endHour);
    expect(result, expected);
  });
}
