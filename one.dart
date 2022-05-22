void main() {
  // void - keyword (reserved word )
  // void - no return
  // main is a function and this is the entry point of dart program
  print("hello dart");
  int age = 21;
  print("Age ${age.runtimeType}");
  print("Age is $age");
  //age = "Amit";
  var name = "Amit";
  var x = 10; // Implicit Way / Type Inference
  print("X is ${x.runtimeType}");
  //x = "AMit";
  int y = 20; // Explicit Way
  dynamic q = 19; // Explicit way
  print(q.runtimeType);
  q = "Amit";
  print(q.runtimeType);
  q = true;
  print(q.runtimeType);
  var g; // Implicit way
  g = 100;
  g = true;
  g = "Hello";
}
