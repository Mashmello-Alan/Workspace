void main(List<String> args) {
  // 1.基础赋值运算符
  int a = 10;
  int b = 3;
  // print(a);
  int c = a + b;

  // 2.复合赋值运算符
  // var x = 12;
  // x = x + 10;   // x += 10
  // print(x);

  // var x = 10;
  // x += 10;  // 除了+=外，还可以进行-=，*=，/=各种运算符。
  // print(x);

  
  // 3.??=的作用在于，当变量的值为null时，则会对变量进行赋值，如果变量已存在具体的值，则不进行赋值。

  // int ?x1 = null;
  int ?x1 = 12;

  // int x2;
  x1 ??= 123;
  print(x1);
  // print(x2);
}