class Complex{
  // prefix _ to make them private (var, methods, ctors etc) => same file scope would work
  // normal getters and setters or use get and set
  num real;
  num imaginary;
  // static num counter = 0; // any object of this class can access it
  // final num fin; // only defined once and cant be changed

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

  @override
  Complex operator +(Complex c){
    return Complex(this.real + c.real, this.imaginary + c.imaginary);
  }

// can not be invoked via instances but the actual class
// no need to created an object => more like a helper
  static Complex subtract(Complex c1, Complex c2){
    return Complex(c1.real - c2.real, c1.imaginary - c2.imaginary); 
  }

}

// inheritance => all methods of complex class, we can use or override but not the static ones => they are attached to the class
class Some extends Complex{
  Some(num real, num imaginary): super(real, imaginary); 
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

  Complex.subtract(obj, obj);
}
