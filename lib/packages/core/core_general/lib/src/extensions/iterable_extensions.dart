extension IterableExtensions on Iterable? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
