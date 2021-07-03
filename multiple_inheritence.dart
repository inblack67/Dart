// dart does not support multiple inheritance => not more than one class can be extended
// implements
class A {
  greet() => 'hello';
}

class B {
  hello() => 'worlds';
}

class C implements A, B {
  greet() => 'hello';
  hello() => 'worlds';
}

// mixins => with
// unlike inheritance, mixins do not need to redefine the behaviour of their parent class
// rules
// no declared ctors
// no extends kw & this, no calls to super
class Time {
  final time = DateTime.now();
  printStamp() => print(time);
}

class D with Time implements A {
  greet() => 'hello';
}
