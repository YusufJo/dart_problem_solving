class CowsAndBulls {
  const CowsAndBulls({required this.cows, required this.bulls});

  final int cows;
  final int bulls;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CowsAndBulls &&
          runtimeType == other.runtimeType &&
          cows == other.cows &&
          bulls == other.bulls;

  @override
  int get hashCode => cows.hashCode ^ bulls.hashCode;

  @override
  String toString() {
    return 'CowsAndBulls{cows: $cows, bulls: $bulls}';
  }
}

/// Precondition: [random] and [guess] should have the same length.
CowsAndBulls getCowsAndBulls({required int random, required int guess}) {
  final randomWord = random.toString();
  final guessWord = guess.toString();
  int cows = 0;
  int bulls = 0;
  for (int i = 0; i < randomWord.length; i++) {
    if (randomWord[i] == guessWord[i]) {
      cows++;
      continue;
    }
    if (cows + bulls == 4) break;
    for (int j = 0; j < guessWord.length; j++) {
      if (i != j && randomWord[i] == guessWord[j]) bulls++;
    }
  }
  return CowsAndBulls(cows: cows, bulls: bulls);
}
