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