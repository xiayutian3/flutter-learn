void main() {
  String username = getusername();
  String userinfo = getpersoninfo(1);
  print(userinfo);

//   int age = addAge(111,1);
  int age = addAge2(111);
//   int age = addAge3(111, age2: 1);
//   int age = addAge3(111);
  // int age = addAge4(age1:111,age2:1);
  print(age);

//   匿名函数
  var list = ["s1", "s2", "s3", "s4"];
  list.forEach((element) {
    print(element);
  });
}

String getusername() {
  return "dfdf";
}

String getpersoninfo(int userid) {
  Map userinfos = {'1': "hello", '2': "world"};
  return userinfos[userid.toString()];
}

//可选参数
// addAge(111,1);
int addAge(int age1, [int? age2]) {
  return age1 + (age2 != null ? age2 : 0);
}

// addAge(111,1);
int addAge2(int age1, [int age2 = 0]) {
  return age1 + age2;
}

// addAge3(111, age2: 1);
// addAge3(111);
int addAge3(int age1, {int age2 = 0}) {
  return age1 + age2;
}

// addAge4(age1:111,age2:1);
int addAge4({int age1 = 0, int age2 = 0}) {
  return age1 + age2;
}
