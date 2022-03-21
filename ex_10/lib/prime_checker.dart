bool checkIsPrime(int number, [int divisor = 2]) {
  if (number <= 2) {
    return number == 2 ? true : false;
  }
  if (divisor >= number) {
    return true;
  }
  if (number % divisor == 0) {
    return false;
  }
  return checkIsPrime(number, ++divisor);
}
