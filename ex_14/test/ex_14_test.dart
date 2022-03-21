import 'package:ex_14/password_generator.dart';
import 'package:test/test.dart';

void main() {
  group('Password Generator', () {
    late final List<String> punctuationAndSymbols;
    late final List<String> digits;
    late final List<String> alphabet;

    setUpAll(() {
      punctuationAndSymbols = _generatePunctuationAndSymbols();
      digits = _generateDigits();
      alphabet = _generateAlphabet();
    });

    test('should have a length specified by the user', () {
      const length = 10;
      final sut = generatePassword(length);
      expect(sut.length, length);
    });

    test('should have ~33% as punctuation and symbol characters', () {
      const length = 12;
      final sut = generatePassword(length);
      final percentage = _calculatePercentageOfCharactersInPassPhrase(
          passPhrase: sut, characters: punctuationAndSymbols);
      expect(0.33 - percentage < 0.15, true);
    });

    test('should have ~33% as digits', () {
      const length = 5;
      final sut = generatePassword(length);
      final percentage = _calculatePercentageOfCharactersInPassPhrase(
          passPhrase: sut, characters: digits);
      expect(0.33 - percentage < 0.15, true);
    });

    test('should have ~33% as alphabet', () {
      const length = 17;
      final sut = generatePassword(length);
      final percentage = _calculatePercentageOfCharactersInPassPhrase(
          passPhrase: sut, characters: alphabet);
      expect(0.33 - percentage < 0.15, true);
    });
  });
}

List<String> _generatePunctuationAndSymbols() => [
      ...List.generate(15, (index) => String.fromCharCode(33 + index)),
      ...List.generate(7, (index) => String.fromCharCode(58 + index)),
      ...List.generate(6, (index) => String.fromCharCode(91 + index)),
      ...List.generate(4, (index) => String.fromCharCode(123 + index)),
    ];

List<String> _generateDigits() => List.generate(10, (index) => '$index');

List<String> _generateAlphabet() => [
      ...List.generate(26, (index) => String.fromCharCode(65 + index)),
      ...List.generate(26, (index) => String.fromCharCode(97 + index)),
    ];

double _calculatePercentageOfCharactersInPassPhrase(
        {required String passPhrase, required List<String> characters}) =>
    passPhrase.runes
        .map(String.fromCharCode)
        .where(characters.contains)
        .length /
    passPhrase.length;
