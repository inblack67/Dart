// JIT => hot reloading
// AOT (Ahead of time) => binary created (.exe, .apk, etc) => publish program
// dart2 has become statically typed
// but it refers to types to => hybrid

void main(){
  var x = 5;
  // x = '5'; // cant 
  print(x);
  dynamic y = 10; // takes up more memory than int
  y = '5'; // ok
  print(y);

// not either of the two are efficient inside memory
  // dynamic type => generalizes all types
  // Object => all types are derived from object

  // $x, ${x} => both valid => string interpolation
  print('$x ${x+x}');

  bool t = true;
  if(t){
    print('true');
  }

  // conditional opeators 
  // while, dowhile, for  loops

}
