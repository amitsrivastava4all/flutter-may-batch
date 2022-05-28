void main() {
  const double PI = 3.14;
  String name = "Amit"; // Immutable
  name = name + "Srivastava";
  final StringBuffer sb = new StringBuffer(); // Mutable
  sb.write("Amit");
  sb.write("srivastava");
  print(sb);
}
