void main(List<String> args) {
  /***
   * ! 取反
   */
  bool flag = false;
  print(!flag); // true

  /***
   * &&并且：全部为true的时候则为true，否则值为false
   */
  bool a = true;
  bool b = true;
  print(a && b); // true
  print(!a && b); // false
  print(!a && !b); // false

  /***
   * ||或：全为false的值才为false，否则值为true
   */

  bool x = false;
  bool y = false;
  print(x || y); // false

  // 如果一个人的年龄是20，并且gender为男，打印出这个人的信息。否则输出"未找到"。
  // int age =20;
  // String gender = '男';
  // if (age == 20 && gender == '男'){
  //   print("$age -- $gender");
  // }else{
  //   print("未找到");
  // }

  // 如果一个人的年龄是20，或者gender为女，打印出这个人的信息。否则输出"未找到"。
  int age = 20;
  String gender = '女';
  if (age == 20 || gender == '男') {
    print("$age -- $gender");
  } else {
    print("未找到");
  }
}
