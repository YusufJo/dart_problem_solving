import 'dart:io';

import 'package:ex_6/palindrome_checker.dart';

void main(List<String> arguments) {
  print('Welcome to Palindrome checker');
  late final String? input;
  do {
    print('Enter a word: ');
    input = stdin.readLineSync();
    if (input != null) {
      break;
    } else {
      print('Wrong entry, please try again.');
    }
  } while (true);
  final result = checkIsPalindrome(input) ? 'Is' : 'Is NOT';
  print('$input $result a palindrome!');
}
