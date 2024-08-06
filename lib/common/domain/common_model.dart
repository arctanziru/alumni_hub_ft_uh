class ReadManyResponse<T> {
  final List<T> data;
  final int total;

  ReadManyResponse({
    required this.data,
    required this.total,
  });
}
