bool checkIsPalindrome(String word) {
  String reversed = '';
  for (int i = 0; i < word.length; i++) {
    reversed = word[i] + reversed;
  }
  return reversed.toLowerCase() == word.toLowerCase();
}
