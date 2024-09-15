extension on List<int> {
  int get sum => fold(0, (previousValue, element) => previousValue + element);
}

extension Sillier on int {}
