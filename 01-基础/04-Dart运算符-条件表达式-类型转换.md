## Dart运算符

与其他计算机编程语言中的运算符基本相同

### 算术运算符

```dart
+ - * / %(取余) ~/(取整)
```

### 示例

```dart
void main(List<String> args) {
  int a = 13;
  int b = 5;
  print(a+b);
  print(a-b);
  print(a*b);
  print(a/b);
  print(a%b);   // 取余 3
  print(a~/b);  // 取整 2
}
```



### 关系运算符

```dart
== != > < >= <=
```

#### 示例

```dart
void main(List<String> args) {
  int a = 5;
  int b = 3;

  print(a==b);
  print(a!=b);
  print(a>b);
  print(a<=b);
  print(a>=b);
  print(a<=b);
}
```



### 逻辑运算符

```dart
! && ||
```

#### 示例

```dart
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
```



### 赋值运算符

- 基础赋值运算符

​	=

​	??=

- 复合赋值运算符

  +=

  -=

  *=

  /=

  %=

  ~/=

#### 示例

```dart
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
```



## 条件表达式

条件表达式和Java语言相似。

#### 示例

```dart
void main() {
  // 1 if else switch case

  bool flag = true;
  if (flag) {
    print('true');
  } else {
    print(false);
  }

  // 判断一个人的成绩，如果大于60，显示为及格，如果大于70显示良好，如果大于90显示为优秀
  var score1 = 51;
  if (score1>90){
    print('优秀');
  }else if(score1 > 70){
    print('良好');
  }else if(score1 > 60){
    print('及格');
  }else{
    print('不及格');
  }

  // 使用switch case的方式改造上述的if..else if..else的结构。
  var score2 = 91;
  switch (score2) {
    case > 90:
      print('优秀');
      break;
    case > 70:
      print('良好');
      break;
    case > 60:
      print('及格');
      break;
    default:
      print('不及格');
      break;
  }

  //2. 三目运算符
  var flag1 = true;
  var c ;
  if (flag1){
    c = 'true';
  }else{
    c = 'false';
  }
  print(c);

  // 上述代码转成三目运算后如下：
  var flag2 = true;
  String c1 = flag2 ? 'True结果':'False结果';
  print(c1);
}

```



## 类型转换

类型转换是在开发中经常用到的功能。

### 示例

```dart
main() {
  // 1.Number类型与String类型之间的转换
  // Number类型向String类型进行转换时，调用的是toString()
  // String类型转换成Number类型 int.parse()
  
  // 字符串转换int
  String str1 = '123';
  var str2IntNumber = int.parse(str1);
  print(str2IntNumber is int);  // 结果为true，则表示转换int类型成功

  // 字符串转double
  String str2 = '123.1';
  var str2DoubleNumber = double.parse(str2);
  print(str2DoubleNumber is double);  // 结果为true，则表示转换double类型成功

  // 字符串中的整型值转double
  String str3 = '12';
  var str2DoubleNumber2 = double.parse(str3);
  print(str2DoubleNumber2 is double);

  /***
   * 
   * 字符串如果为空的话不能进行转换，否则报错
   * 
   * Unhandled exception:
   * FormatException: Invalid double
   *  #0      double.parse (dart:core-patch/double_patch.dart:112:28)
   *  #1      main (file:///d:/code/VSCode/%E7%A7%BB%E5%8A%A8%E9%AB%98%E7%BA%A7%E5%BC%80%E5%8F%91/22%E8%BD%AF%E6%9C%AC2/01-%E5%9F%BA%E7%A1%80/17-%E7%B1%BB%E5%9E%8B%E8%BD%AC%E6%8D%A2.dart:23:33)
   *  #2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:297:19)
   *  #3      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:184:12)
   */ 
  String price1 = '';
  // var price1_to_number = double.parse(price1);
  // print(price1_to_number is double);

  // 上述代码中的错误可以通过try..catch的方式处理
  try {
    var price1_to_double = double.parse(price1);
    print(price1_to_double);
  } catch (err) {
    print('0');
  }

  // 数值类型转字符串，以int为例，double类型同理。
  int num1 = 12;
  var num2str = num1.toString();
  print(num2str is String); // 输出为true则表示类型转换成功。


  //2.其他类型转换成Boolean类型
  // isEmpty：判断字符串是否为空
  // NotIsEmpty：同样也用于判断字符串是否不为空，与isEmpty相反。
  var str = '';
  if(str.isEmpty){
    print('字符串为空');
  }else{
    print('字符串不为空');
  }

  //在Dart语言中存在一个NaN的结果，其含义表示为Not a Number，和Null不同，Null也是值。
  var num2 = 0 / 0;
  // print(num2);
  if(num2.isNaN){
    print('计算结果为NaN');
  }
}
```



