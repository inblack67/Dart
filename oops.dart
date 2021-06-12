class Complex{
  // prefix _ to make them private => same file scope would work
  // normal getters and setters or use get and set
  num real;
  num imaginary;

  Complex(this.real, this.imaginary);

  // naming ctors
  // before obj is created
  // this => above ctor
  Complex.real(num real) : this(real, 0); // passing 0 to imaginary
  Complex.imaginary(num imaginary) : this(0, imaginary);

  @override
  String toString(){
    // return super.toString(); // original toString
    if (imaginary >= 0){
      return '$real + $imaginary i';
    } else{
      return '$real - ${imaginary.abs()} i';
    }
  }

  @override
  bool operator == (other) {
    if (!(other is Complex)){
      return false;
    }
    return this.real == other.real && this.imaginary == other.imaginary;
  }

  // get real => _real;
  // set real(num value) => _real = value;
  // obj.real = 1;

}


void main(){
  // num => parent of int and double
  // Object => parent of all object
  num x = 1.2;
  num y = 1;
  print("$x, $y");

  // var c = Complex();
  // c.real = 1;
  // c.imaginary = 2;

  // cascade operator
  // var c2 = Complex()
  // ..imaginary = 2
  // ..real = 2;

  var obj = Complex(1, 3); // new keyword is not required from dart 2.0
  print(obj.toString());

  print(obj.toString());

  var r = Complex.real(1);
  var i = Complex.imaginary(1);
  print('$r $i');
}
