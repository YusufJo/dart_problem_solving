import 'dart:math';

/// Symbols Reference @
/// https://en.wikipedia.org/wiki/List_of_Unicode_characters#Latin_script
String generatePassword(int length) {
  List<String> characters = [];
  for (int i = 0; i < length ~/ 3; i++) {
    characters.add(_randomAlphabetCharacter);
    characters.add(_randomDigit);
    characters.add(_randomPunctuationOrSymbol);
  }
  late List<String> suggestions;
  while (characters.length < length) {
    suggestions = [
      _randomPunctuationOrSymbol,
      _randomDigit,
      _randomAlphabetCharacter
    ];
    suggestions.shuffle();
    characters.add(suggestions.first);
  }
  characters.shuffle();
  return characters.join();
}

String get _randomPunctuationOrSymbol {
  final secureRandom = Random.secure();
  final rand = [
    secureRandom.nextInt(15) + 33,
    secureRandom.nextInt(7) + 58,
    secureRandom.nextInt(6) + 91,
    secureRandom.nextInt(4) + 123
  ]..shuffle();
  return String.fromCharCode(rand.first);
}

String get _randomDigit => '${Random.secure().nextInt(10)}';

String get _randomAlphabetCharacter {
  final secureRandom = Random.secure();
  final rand = [secureRandom.nextInt(26) + 65, secureRandom.nextInt(26) + 97]
    ..shuffle();
  return String.fromCharCode(rand.first);
}
