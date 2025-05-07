/***
 * Dart数据类型：字符串类型
 */

main(){
  // 1. 字符串定义的几种方式
  // var str1 = 'this is str1';
  // var str2 = "this is str2";

  // print(str1);
  // print(str2);

  String str3 = 'this is str3';
  String str4 = "this is str4";

  // print(str3);
  // print(str4);


  String str5 = """This is str5
  This is str5

  this is str5
""";
  // print(str5);


  // 2. 字符串的拼接
  String str6 = '你好';
  String str7 = "Dart";
  print("$str6 $str7");
  print(str6 + str7);
  print(str6 + "," + str7);
  }