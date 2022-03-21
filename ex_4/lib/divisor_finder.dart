List<int> findDivisorsOf(int number) {
  final divisors = <int>[];
  int absNumber = number.abs();
  for (int i = 1; i <= absNumber; i++) {
    if (absNumber % i == 0) divisors.add(i);
  }
  return divisors;
}
