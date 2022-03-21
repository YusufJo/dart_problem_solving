int countEvenNumbers(List<int> numbers) =>
    numbers.where((number) => number % 2 == 0).length;
