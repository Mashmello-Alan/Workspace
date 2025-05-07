## 有限循环

```dart
/***
 * for基本语法：
 * for(int i = 1;i <= 100; i++){
 *   print(i);
 * }
 * 
 * 第一步：声明变量int i = 1；
 * 第二步：判断i是否小于或等与100。
 * 第三步：执行print操作
 * 第四步：i++
 * 第五步：循环执行第二部到第四步，指导第二步的判断不再小于或等与100。
 */

void main(List<String> args) {
  // 1. 打印0-50之间的偶数
  for (var i = 0; i <= 50; i++) {
    if (i % 2 == 0) {
      // print(i);
    }
  }

  // 2. 求1+2+3+4+5..+100的和
  var sum1 = 0;
  for (var i = 1; i <= 100; i++) {
      sum1 +=i;
  }
  print(sum1);


  // 3. 计算5的阶乘（n的阶乘就是1*2*3*4..*n）
  var result5 = 1;
  for (var i = 1; i <=5; i++) {
    result5 *= i;
  }
  print(result5);

  // 4. 定义一个二维数组，打印里面的内容
  List list = [
    {
      "cate":"国内",
      "news":[
        {"title":"国内新闻1"},
        {"title":"国内新闻2"},
        {"title":"国内新闻3"},
      ]
    },
        {
      "cate":"国外",
      "news":[
        {"title":"国外新闻1"},
        {"title":"国外新闻2"},
        {"title":"国外新闻3"},
      ]
    },
  ];
  // 国内
  // 国内新闻1
  // 国内新闻2
  // 国内新闻3
  // 国外
  // 国外新闻1
  // 国外新闻2
  // 国外新闻3

  for (var i = 0; i < list.length; i++) {
    print(list[i]["cate"]);
    for (var j = 0; j < list[i]["news"].length; j++) {
      print(list[i]["news"][j]["title"]);
    }
  }
}
```



## 无限循环

```dart
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
```



## Break和Continue

### break

break语句的功能：

- 在switch语句中使流程跳出switch的结构。
- 在循环语句中使流程跳出当前的循环，遇到break，循环会终止，后面代码也不会执行。

强调：

- 如果在循环中已执行了break语句，就不会执行循环体位于break语句后面的代码。
- 在多层循环中，一个break关键字只能向外跳出一层。



### continue

continue语句的功能：

- 只能在循环语句中使用，使本次循环结束，即跳过循环体下面的尚未执行的语句，接着进行下次的是否执行循环的判断。
- continue可以用在for循环及while循环中，但不建议用在while循环里面，因为不小心的话会容易出现死循环。



