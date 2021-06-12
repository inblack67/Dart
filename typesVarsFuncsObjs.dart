

void main(){
  print('hello');
  var x = -10; // -10 is an object => instantiated from the class
  print(x);

  // types
  // numbers - (int, float)
  // strings
  // booleans 
  // lists (arrays) List<int>
  // maps hashmaps
  // runes unicode char sets
  // symbols #symbol

  int y = 9;
  double z = 10.0;

  String str = '${x+y}';
  print(str);

  bool b = true;

  List untyped_list = [1,2,3];
  print(untyped_list[0]);
  List<String> ls = ['ok', 'dart'];
  print(ls[0]);

  Map<String, int> hash = {
    'A': 10,
    'B': 20,
    'C': 30,
  };

  print(hash['A']);

  // functions => also objects and single class
  print(add(2,2));
  print(exec(add, 4,4));
}

// bools cant be added
// strings cant be multiplied

int add(int a, int b){
  return a + b;
}

exec(Function op, a,b){
  return op(a,b);
}

void anonymous(){
  return (a,b)
  {
    a+b;
  }(1,2);
}
