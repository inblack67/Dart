import 'dart:convert';
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
}
