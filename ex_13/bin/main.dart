import 'dart:io';

import 'package:ex_13/reverse.dart';

void main(List<String> arguments) {
  print('Welcome to Reverse the phrase game');
  print('Enter a phrase: ');
  final input = stdin.readLineSync() ?? '';
  if (input.isEmpty) {
    print('You didn\'t enter anything!');
  } else {
    final reversed = reverse(input);
    print('Your result is:\n$reversed');
  }
}
