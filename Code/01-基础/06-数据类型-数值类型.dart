/*** 
Dart数据类型：数值类型
  int
  double
 */

main(){
  // 1. int类型，必须是整数
  int a = 123;
  a = 45;
  print(a);

  // 2. double 即可以是整形，也是可以是浮点型
  double b = 23.4;
  b = 24;
  
  print("B的值是：$b");

  var c = a + b;
  print(c);     // c的结果是？69 69.0


  var d = "123";
  
  print("c+d");   // 结果是c+d 
  print("$c+$d");   // 结果是 69.0+123
}