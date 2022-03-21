import 'dart:io';

import 'package:ex_14/password_generator.dart';

void main(List<String> arguments) {
  print('Welcome to Password generator');
  final password = generatePassword(_promptForLength);
  print('Your password is:\n$password');
}

int get _promptForLength {
  late String input;
  do {
    print('Enter how long would you want the password to be (min: 3): ');
    input = stdin.readLineSync() ?? '';
    if (input.isNotEmpty) {
      final parsed = int.tryParse(input);
      if (parsed != null) {
        if (parsed >= 3) {
          return parsed;
        }
        print('Length should be greater than 3');
        continue;
      }
      print('Wrong entry. Please enter a number.');
      continue;
    }
    print('No numbers were entered, please try again');
  } while (true);
}
