class Counter {
  final int value;

  const Counter(this.value);

  Counter copyWith({int? value}) {
    return Counter(value ?? this.value);
  }
}
