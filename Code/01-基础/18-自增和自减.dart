/***
 * ++ -- 分别表示自增1和自减1
 * 在赋值运算时，如果++或--在变量的前面，则表示先计算再赋值，
 * 如果是写在变量的后面，先赋值，再计算。
 * var a = 10;
 * var b = a--;   var b = 10;    a(10) - 1 
 * print(a);  // 10 9
 * print(b);  // 9  10
 */
main() {
  // var a = 10;
  // var b = a--;
  // // var b = --a;      // a - 1 = 9 -> var b ;
  // print(a); // 10 9     9
  // print(b); // 9  10    9

  var a = 10;
  a--;  // 9
  print(a);

  var b = a++;
  print(b); // 9
  print(a); // 10
  b = a+b;
  print(b); // 19


  // 升级一点点的难度

  int x = 10;
  int y = x++;
        // 12    10       12  10
  int z = (++x + y--) * (x-- + ++y);  
  print(z); 



  
}
