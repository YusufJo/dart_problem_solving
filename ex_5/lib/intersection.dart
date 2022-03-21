List<int> findIntersectedElements(List<int> first, List<int> second) {
  final result = <int>[];
  final firstSet = first.toSet();
  final secondSet = second.toSet();
  for (int i in firstSet) {
    for (int j in secondSet) {
      if (i == j) result.add(j);
    }
  }
  return result;
}
