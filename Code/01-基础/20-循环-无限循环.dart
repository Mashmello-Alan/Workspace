/***
 * 无限循环存在两种方式：
 * while(表达式){
 *   代码块
 * }
 * 
 * do{
 *  代码块
 * }while(表达式);
 */

main() {
  // while很容易写成死循环，如下
  // int i = 1;
  // while(i <=10){
  //   print(i);
  // }

  // 1.求1+2+3+4..+100的和
  int i = 1;
  var sum = 0;
  while (i <= 100) {
    sum += i;
    i++;
  }
  print(sum);

  // do..while和while循环唯一区别就是前者无论表达式条件是否成立都会执行一遍。
  var j = 20;
  do {
    print("我就是那无论条件是否满足都会执行的do..while");
  } while (j < 2);
}
