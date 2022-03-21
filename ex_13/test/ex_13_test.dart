import 'package:ex_13/reverse.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Reverse Phrase', () {
    testRevere(phrase: '', expected: '');
    testRevere(phrase: 'Hi', expected: 'Hi');
    testRevere(phrase: 'My name', expected: 'name My');
    testRevere(phrase: 'My name is Michele', expected: 'Michele is name My');
  });
}

@isTest
void testRevere({required String phrase, required String expected}) {
  test('should return \'$expected\' as a reverse for \'$phrase\'', () {
    final result = reverse(phrase);
    expect(result, expected);
  });
}
