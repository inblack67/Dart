import 'dart:math';

// abstract class => does not allow any instantiations => so can create interfaces for other classes to implement
abstract class Shape {
  // so any class which intherits this class would need to have the following
  double get perimeter;
  double get area;
  String get name;
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double get perimeter => 2 * pi * radius;

  @override
  double get area => pi * radius * radius;

  @override
  String get name => 'Circle with radius $radius';
}

class Rectangle extends Shape {
  double length, width;
  Rectangle(this.length, this.width);

  @override
  double get perimeter => 2 * (length + width);

  @override
  double get area => length * width;

  @override
  String get name => 'Rectangle with length $length and width $width';
}

class Square extends Rectangle {
  double side;

  Square(this.side) : super(side, side);

  @override
  String get name => 'Square with length $side';
}
