void main() {
  //num ：int \  double
  int a = 110;
  int b = int.parse('123');

  double e = 20.312;
  double v = double.parse("12.32");

  //string
  String good = 123.toString();
  String job = 123.2356.toStringAsFixed(2);
  print(job);

  //bool
  bool q = 12 > 3;
  bool z = 1 == "1";
  print(z);

  //List 数组类型
  List list = [1, 2, 3, 4, 5, 6, 7];
  List newList = [];
  newList.add(2);
  newList.addAll([5, 1]);
  print(newList);
  print(newList.length);
  print(newList.first);
  print(newList.last);
  print(newList[2]);
  print(newList);

  //Map
  Map obj = {'s': 1, "d": 3};
  Map obj2 = new Map();
  obj2['s'] = 1;
  obj2['d'] = 3;
  print(obj);
  print(obj2);
  print(obj2.containsKey('s'));
  print(obj2.containsKey('e'));
  print(obj2.remove('s'));
  print(obj2);
}
