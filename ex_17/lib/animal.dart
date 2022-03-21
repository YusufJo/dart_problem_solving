enum Food { carnivoro, onivoro, herbivoro, hematofago }
enum Specie { ave, mamifero, inseto, anelideo }
enum Body { vertebrado, invertibrado }

class Animal {
  const Animal({
    required this.name,
    required this.food,
    required this.specie,
    required this.body,
  });

  final String name;
  final Food food;
  final Specie specie;

  final Body body;
}
