void main() {
  List<String> list = ['hello', 'worlds'];
  Map<int, String> map = Map();
  print(list);
  print(map);
  PrintItems<String> res = PrintItems(count: 5, item: 'hello');
  PrintItems<num> res2 = PrintItems(count: 5, item: 1);
  res.printItems();
  res2.printItems();
  print(genericGreet(1, {"hello": "ok"}));
}

// <T exntends num>

class PrintItems<T> {
  int count;
  T item;
  PrintItems({required this.count, required this.item});

  void printItems() {
    for (var i = 0; i < count; i++) {
      print(item);
    }
  }
}

String genericGreet<T, S>(T a, S b) {
  return '$a => $b';
}
