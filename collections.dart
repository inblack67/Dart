import 'dart:math' as Math;

void main() {
  // List class extends from iterable
  List<int> nums = [1, 2, 3];
  for (var num in nums) {
    print(num);
  }

  var iNumbers = Iterable.generate(10, (i) => i);
  for (var iNum in iNumbers) {
    print(iNum);
  }

  iNumbers.forEach((el) => print(el));

  print(iNumbers.first);
  print(iNumbers.last);
  print(iNumbers.skip(4).toList());
  print(iNumbers.takeWhile((value) =>
      value <
      10)); // takeWhile computation is lazy => if inside infinite loop => whenever cond. becomes false takeWhile stops

  print(iNumbers.any((el) => el > 2));
  print(iNumbers.every((el) => el > 2));
  print(iNumbers.where((el) => el % 2 == 0).toList()); // filter
  print(iNumbers.map((el) => el * 2).toList());
  print(iNumbers.reduce((prev, curr) => prev + curr));
  print(iNumbers.reduce(Math.min));
  print(iNumbers.reduce(Math.max));

  // convert iterables into lists, sets and strings
  var iList = iNumbers.toList();
  print(iList);
  var iSet = iNumbers.toSet();
  print(iSet);
  var iString = iNumbers.toString();
  print(iString);

  // maps => key val => associated datatype
  Map<int, int> map = Map.fromIterable(iNumbers.take(10));
  print(map.map((key, value) => MapEntry(key, value)));
}
