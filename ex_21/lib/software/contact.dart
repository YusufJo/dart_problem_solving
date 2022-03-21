class Contact {
  const Contact({
    required this.name,
    required this.number,
    this.email,
  });

  final String name;
  final String number;
  final String? email;
}
