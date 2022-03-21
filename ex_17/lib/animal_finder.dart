import 'animal.dart';

List<Animal> _animals = [
  Animal(
      name: 'aguia',
      food: Food.carnivoro,
      specie: Specie.ave,
      body: Body.vertebrado),
  Animal(
      name: 'pomba',
      food: Food.onivoro,
      specie: Specie.ave,
      body: Body.vertebrado),
  Animal(
      name: 'homem',
      food: Food.onivoro,
      specie: Specie.mamifero,
      body: Body.vertebrado),
  Animal(
      name: 'vaca',
      food: Food.herbivoro,
      specie: Specie.mamifero,
      body: Body.vertebrado),
  Animal(
      name: 'pulga',
      food: Food.hematofago,
      specie: Specie.inseto,
      body: Body.invertibrado),
  Animal(
      name: 'lagarta',
      food: Food.herbivoro,
      specie: Specie.inseto,
      body: Body.invertibrado),
  Animal(
      name: 'sanguessuga',
      food: Food.hematofago,
      specie: Specie.anelideo,
      body: Body.invertibrado),
  Animal(
      name: 'minhoca',
      food: Food.onivoro,
      specie: Specie.anelideo,
      body: Body.invertibrado),
];

Animal? getAnimal(
    {required Specie specie, required Body body, required Food food}) {
  for (Animal animal in _animals) {
    if (animal.specie == specie && animal.body == body && animal.food == food) {
      return animal;
    }
  }
  return null;
}
