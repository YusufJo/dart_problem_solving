class Resolution {
  const Resolution({
    required this.width,
    required this.height,
  });

  final int width;
  final int height;

  @override
  String toString() {
    return '$width by $height';
  }
}
