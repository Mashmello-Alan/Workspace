// 1.定义一个方法可，求1到这个参数之间所有数的he
int sumNumbe(int n) {
  int sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// 定义一个函数，此函数能够自动把数组中的值去重。
List distinctList(String str) {
  List list1 = str.split(',');
  return list1;
}

// 定义一个带可选参数的方法
String printUserInfo(String username, [int age = 0]) {
  if (age > 0) {
    return "姓名：$username -- 年龄：$age";
  }
  return "姓名：$username -- 年龄保密";
}

// 4.定义一个带有默认参数的方法
String printUserInfo2(String username, [String sex = '未知', int age = 0]) {
  if (age > 0) {
    return "姓名:$username -- 性别:$sex -- 年龄:$age";
  }
  return "姓名:$username -- 性别:$sex -- 年龄保密";
}

// 5.定义一个命名参数的方法，最新的Dart定义命名参数需要指定类型默认值
String printUserInfo3(String username, {String sex = '未知', int age = 0}) {
  if (age != 0) {
    return "姓名:$username -- 性别:$sex -- 年龄:$age";
  }
  return "姓名:$username -- 性别:$sex -- 年龄保密";
}

// 6.实现一个把函数当做参数的函数
func1(String str) {
  print(str);
}

func2() {
  func1('我是在func2函数中被调用的func1函数');
}

// 函数多层嵌套作为参数的知识点，仅做了解，在实际开发中使用的占比不是很多。
func3(func1) {
  func2();
}

main() {
  print(sumNumbe(5));
  print(sumNumbe(100));
  print(distinctList("哈哈,呵呵,祖安"));

  print(printUserInfo('zs', 1));

  print(printUserInfo2('张三'));
  print(printUserInfo2('张三', '女'));
  print(printUserInfo2('张三', '女', 30));
  // print(printUserInfo2('张三',30,'女')); 形参和实参类型不匹配

  // 在传入实参的时候，年龄和性毕节必须是带有命名的
  print(printUserInfo3('张三', sex: '男', age: 20));
  print(printUserInfo3('张三', age: 20, sex: '男'));

  // 
  func3(func2);
}
