void main() {
  List<dynamic> l = [10, 20, 30, 40, "Amit", true];
  List<int> l2 = [10, 20, 30];
  print(l2[0]);
  Set<int> s3 = {10, 20, 10, 20, 10, 30, 40, 40, 40};
  print(s3.first);
  print(s3.toList()[1]);
  print(s3);
  List<int> temp = [10, 33, 35, 38, 18, 32, 39, 30, 11, 37];
  Map<String, int> temp2 = {"shimla": 10, "delhi": 33, "mumbai": 35};
  print(temp2['delhi']);
}
