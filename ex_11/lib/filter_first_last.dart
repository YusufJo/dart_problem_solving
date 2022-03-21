List<int> getFirstAndLast(List<int> numbers) {
  if (numbers.isEmpty) return [];
  if (numbers.length == 1) return numbers;
  return [numbers.first, numbers.last];
}
