/***
 * Dart数据类型：List（数组/集合）
 */

main() {
  // 1. 第一种定义List的方式，此方式不定义类型
  var l1 = ["张三", 20, true];
  // print(l1);  // ["张三",20,true]
  // print(l1[0]);   // 张三
  // print(l1[1]);   // 20

  // 2. 第二种定义List的方式，指定类型，指定类型后，List中的所有数据必须是同一个类型的，否则会报错。
  // var l2 = <String> ["张三",5];
  var l2 = <String>["张三", "李四"];
  // print(l2);

  // 3. 第三种定义List的方式，增加数据，通过[]创建的数组/集合，它的容量是可以变化的，通过add方式添加数据。
  var l4 = [];
  // print(l4);
  // print(l4.length);
  
  l4.add("张三");
  l4.add("李四");
  l4.add(20);

  // print("---------------------------------------------");
  // print(l4);
  // print(l4.length);

  var l5 = ["张三",20,true];
  l5.add("李四");
  l5.add("王五");
  // print(l5);


  // 4. 第四种定义List的方式
  // var l6 = new List();  // 此方法在新版中已弃用。
  var l6 = List.filled(2, "");    // 表示创建了个固定长度为2,数据为空，且有占位的字符串数组。
  
  print(l6);
  print(l6.length);

  // var l6 = List.filled(2, "",growable: true);  // growable: true表示允许修改数组的长度，默认值为false。
  // l6.add("张三");    // 运行时报错，因为add方法会超出固定的长度
  l6[0] = "张三";
  print(l6);

  // 通过List.filled创建的数组，默认情况下也不允许修改长度。
  l6.length = 0;  // Unsupported operation: Cannot change the length of a fixed-length list

  //  定长属组中的二维数组
  var l7 = List.filled(3,[]);  // 张三，20，true
  l7[0][0] = '张三';
  l7[0][1] = 20;
  l7[0][2] = true;
}
