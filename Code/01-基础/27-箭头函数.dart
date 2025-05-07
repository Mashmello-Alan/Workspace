void main(List<String> args) {
  /**
   * 需求：使用ForEach打印下面List中的数据
   */

  List list = ['苹果', '香蕉', '西瓜'];

  for (var i = 0; i < list.length; i++) {
    print("最常见的遍历方式：${list[i]}");
  }

  for (var value in list) {
    print("通过ForEach的方式打印：${value}");
  }

  list.forEach((value) {
    print("通过数组自带的ForEach的方式打印：${value}");
  });

  // 箭头函数中只能写一条语句，并且语句后面没有分号
  list.forEach((value) => print("通过箭头函数的ForEach的方式打印：${value}"));

  /**
   * 需求：修改下面List中的数据，让数组中大于2的值乘以2
   */

  List list2 = [4, 1, 2, 3, 4];

  var newList = list2.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print(newList.toList());
  // 使用箭头函数处理
  var newList2 = list2.map((value) => value > 2 ? value * 2 : value);
  print(newList2.toList());

  // contains：可以用于处理字符串中是否包含的指定的值。
  void ByPass7(int num) {
    // 把判断转成三目运算
    // 判断数字是否为7的倍数或是否包含7 ? 为true时执行:
    String result = num % 7 == 0 || num.toString().contains("7")
        ? "pass(${num})"
        : num.toString();
    print(result);
  }

  // 业务开发场景中，函数调用函数时，通常会使用Call+被调用的函数名称来组合。
  CallByPass7(int num) {
    for (var i = 1; i <= num; i++) {
      ByPass7(i);
    }
  }

  // 通过一个箭头函数处理逢7必过的小游戏
  FuncByPass7(int userInput_number) {
    // generate函数可以生成一个指定长度范围的数组，第一个参数为长度。
    List userInput = List.generate(userInput_number, (index) => index + 1);
    userInput.forEach((num) => num % 7 == 0 || num.toString().contains("7")
        ? print("pass(${num})")
        : print(num.toString()));
  }
  // ByPass7(25);
  // CallByPass7(25);
  FuncByPass7(25);
}