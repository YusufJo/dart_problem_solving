import 'package:ex_17/animal.dart';
import 'package:ex_17/animal_finder.dart';
import 'package:test/test.dart';
import 'package:meta/meta.dart';

void main() {
  group('Animal Finder', () {
    testAnimal(
        body: Body.vertebrado, specie: Specie.inseto, food: Food.onivoro);
    testAnimal(
        body: Body.vertebrado,
        specie: Specie.ave,
        food: Food.carnivoro,
        expected: 'aguia');

    testAnimal(
        body: Body.vertebrado,
        specie: Specie.ave,
        food: Food.onivoro,
        expected: 'pomba');

    testAnimal(
        body: Body.vertebrado,
        specie: Specie.mamifero,
        food: Food.onivoro,
        expected: 'homem');

    testAnimal(
        body: Body.vertebrado,
        specie: Specie.mamifero,
        food: Food.herbivoro,
        expected: 'vaca');

    testAnimal(
        body: Body.invertibrado,
        specie: Specie.inseto,
        food: Food.hematofago,
        expected: 'pulga');

    testAnimal(
        body: Body.invertibrado,
        specie: Specie.inseto,
        food: Food.herbivoro,
        expected: 'lagarta');

    testAnimal(
        body: Body.invertibrado,
        specie: Specie.anelideo,
        food: Food.hematofago,
        expected: 'sanguessuga');

    testAnimal(
        body: Body.invertibrado,
        specie: Specie.anelideo,
        food: Food.onivoro,
        expected: 'minhoca');
  });
}

@isTest
void testAnimal({
  required Body body,
  required Specie specie,
  required Food food,
  String? expected,
}) {
  test(
      'should return ${expected ?? 'nothing'} for => '
      '${body.name} & ${specie.name} & ${food.name}', () {
    final result = getAnimal(specie: specie, body: body, food: food);
    if (expected == null) {
      expect(result, null);
    } else {
      expect(result!.name, expected);
    }
  });
}
