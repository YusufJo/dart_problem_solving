import 'package:ex_6/palindrome_checker.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Palindrome Checker', () {
    testPalindrome(word: 'Palindrome', isPalindrome: false);
    testPalindrome(word: '123', isPalindrome: false);
    testPalindrome(word: 'Mom', isPalindrome: true);
    testPalindrome(word: 'wOW', isPalindrome: true);
    testPalindrome(word: 'stats', isPalindrome: true);
    testPalindrome(word: 'solos', isPalindrome: true);
  });
}

@isTest
void testPalindrome({required String word, required bool isPalindrome}) {
  test('should return $isPalindrome for the palindrome \'$word\'', () {
    final result = checkIsPalindrome(word);
    expect(result, isPalindrome);
  });
}
