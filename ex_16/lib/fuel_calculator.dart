const carFuelKMPerLiter = 12;

double calculateLiters({required int hours, required int avgSpeed}) {
  final int distance = hours * avgSpeed;
  return distance / carFuelKMPerLiter;
}
