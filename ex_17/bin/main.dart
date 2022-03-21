import 'dart:io';

import 'package:ex_17/animal.dart';
import 'package:ex_17/animal_finder.dart';

void main(List<String> arguments) {
  print('Welcome to Animal finder');
  late List<String> input;
  Body? body;
  Specie? specie;
  Food? food;
  Animal? animal;
  do {
    input = _getUserInput();
    body = _getBody(input[0]);
    if (body == null) {
      print('Wrong body type. Please try again');
      continue;
    }
    specie = _getSpecie(input[1]);
    if (specie == null) {
      print('Wrong specie type. Please try again.');
      continue;
    }
    food = _getFood(input[2]);
    if (food == null) {
      print('Wrong food type. Please try again.');
      continue;
    }
    animal = getAnimal(specie: specie, body: body, food: food);
    if (animal != null) {
      print('You got \'${animal.name}\'.');
    } else {
      print('No animals were found for this combination');
    }
    break;
  } while (true);
}

List<String> _getUserInput() {
  List<String> words = [];
  do {
    print('Enter the body, specie, and food type separated by spaces');
    print('\'i.e vertebrado ave carnivoro\': ');
    words.addAll((stdin.readLineSync() ?? '').split(' '));
    if (words.length < 3) {
      print('Wrong values. Please try again');
    }
  } while (words.length < 3);
  return words;
}

Body? _getBody(String body) {
  for (Body b in Body.values) {
    if (b.name == body.toLowerCase()) return b;
  }
  return null;
}

Specie? _getSpecie(String specie) {
  for (Specie s in Specie.values) {
    if (s.name == specie.toLowerCase()) return s;
  }
  return null;
}

Food? _getFood(String food) {
  for (Food f in Food.values) {
    if (f.name == food.toLowerCase()) return f;
  }
  return null;
}
