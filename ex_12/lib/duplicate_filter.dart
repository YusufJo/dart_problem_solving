// List<int> filterDuplicates(List<int> numbers) => numbers.toSet().toList();

List<int> filterDuplicates(List<int> numbers) {
  final result = <int>[];
  for (int i in numbers) {
    if (result.isEmpty) {
      result.add(i);
      continue;
    }
    if (_listContains(result, i)) {
      continue;
    } else {
      result.add(i);
    }
  }
  return result;
}

bool _listContains(List<int> numbers, int checkNumber) {
  for (int num in numbers) {
    if (num == checkNumber) return true;
  }
  return false;
}
