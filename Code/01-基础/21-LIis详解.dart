/***
 * List常用的属性和方法：
 * 
 *  常用的属性：
 *    length          长度
 *    reversed        翻转
 *    isEmpty         是否为空
 *    isNotEmpty      是否不为空
 * 
 *  常用的方法：
 *    add             添加
 *    addAll          拼接数组
 *    indexOf         查找    传入具体值
 *    remove          删除    传入具体值
 *    removeAt        删除    传入索引值
 *    fillRange       修改    (int start,int end,[E? fillValue])
 *    insert          在指定位置插入  (index,value)
 *    insertAll       在指定位置插入一个List，与插入元素相同
 *    toList          将其他类型转换成List
 *    join            List转换成字符串
 *    split           将字符串转换成List  
 */

void main() {
  /// 常见的List使用案例
  // List myList = ['香蕉','苹果','西瓜'];
  // print(myList[1]);

  // var List = new List();  此方法在新版本时已被淘汰，所以会报错。

  // List myList = ['香蕉','苹果','西瓜'];
  // myList.add('111');
  // myList.add('222');
  // print(myList);

  // List的属性
  // List myList = ['香蕉','苹果','西瓜'];
  // print(myList.length);     // 获取长度
  // print(myList.isEmpty);    // 是否为空
  // print(myList.isNotEmpty); // 是否不为空
  // print(myList.reversed.toList());   // 翻转数组并转换成List。

  // List方法
  List myList = ['香蕉', '苹果', '西瓜'];
  myList.add('桃子');
  print(myList);
  List myList1 = ['桃子', '葡萄', '苹果'];
  myList.addAll(myList1); // 拼接数组
  // myList.addAll(['桃子','葡萄','苹果']);  // 拼接数组
  print(myList);

  // 测试字符串转list后进行拼接
  String str = "青提|哈密瓜|榴莲|青提|哈密瓜|榴莲";
  
  myList.addAll(str.split('|'));
  print(myList);
  print(myList.indexOf('苹果'));  // indexOf会根据数据进行查找，如果找不到返回-1，找到数据则返回索引值。如果有多个值，则默认找到第一个。
  print(myList.remove('西瓜'));
  print(myList.removeAt(1));  // 根据下标删除数组中的元素。
  print(myList);

  myList.fillRange(1, 5,'aaa');
  myList.fillRange(1, 11,'aaa');

  myList.insert(1, 'aa');
  myList.insertAll(2,str.split('|'));


  print(myList);

  print(myList.join(","));


  // print(myList.last);
}
