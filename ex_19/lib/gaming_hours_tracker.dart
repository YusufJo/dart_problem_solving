/// Preconditions: [startHour] and [endHour] should be in 24-hour format.
int getGamingHours({required int startHour, required int endHour}) =>
    24 - startHour + endHour;
