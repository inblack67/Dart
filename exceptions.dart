import 'dart:io';

void main(List<String> args) {
  int index;
  List<String> names = ['John', 'Doe'];
  String? input;
  print('Enter integer');
  // use simple try catch block or =>
  input = stdin.readLineSync();
  try {
    index = int.parse(input!);
    print(names[index]);
  } on FormatException {
    print('not an int');
  } on RangeError {
    print('out of range');
  } finally {
    print('ok');
  }

  try {
    Person john = Person(name: "john", age: 17);
    john.checkAge();
    Person doe = Person(name: "doe", age: 20);
    doe.checkAge();
    Person ok = Person(name: "ok", age: 19);
    ok.checkAge();
  } catch (e) {
    print(e);
  }
}

class Person {
  String name;
  int age;

  Person({required this.name, required this.age});

  void checkAge() {
    if (age < 18) {
      throw AgeException(name: name);
    }
  }
}

class AgeException implements Exception {
  String name;
  AgeException({required this.name});

  @override
  String toString() {
    return "$name is too damn young";
  }
}
