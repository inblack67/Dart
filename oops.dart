class Complex{
  num real;
  num imaginary;

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

}


void main(){
  // num => parent of int and double
  // Object => parent of all object
  num x = 1.2;
  num y = 1;
  print("$x, $y");

  var c = Complex();
  c.real = 1;
  c.imaginary = 2;
  print(c.toString());

}
