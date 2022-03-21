// String reverse(String phrase) => phrase.split(' ').reversed.join(' ');

String reverse(String phrase) {
  if (phrase.isEmpty) return phrase;
  final split = _splitWords(phrase);
  String result = split.last;
  for (int i = split.length - 2; i > -1; i--) {
    result += ' ${split[i]}';
  }
  return result;
}

List<String> _splitWords(String phrase) {
  List<String> split = [];
  String word = '';
  for (int i = 0; i < phrase.length; i++) {
    if ((phrase[i] == ' ' || i == phrase.length - 1) && word.isNotEmpty) {
      if (phrase[i] != ' ') word += phrase[i];
      split.add(word);
      word = '';
      continue;
    }
    word += phrase[i];
  }
  return split;
}
