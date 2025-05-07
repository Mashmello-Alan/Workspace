## ForEach

可以把ForEach看做是For循环的增强版本，通常在数组或集合中，使用ForEach的写法要更简单和便捷。



### 示例

```dart
main() {
  List myList = ['香蕉', '苹果', '西瓜'];

  // 常见的for循环遍历的方式
  for (var i = 0; i < myList.length; i++) {
    print(myList[i]);
  }

  print('--------------------------------------');

  // 增强for循环的遍历方式，底层原理采用指针迭代器。
  for (var item in myList) {
    print(item);
  }

  print('--------------------------------------');

  // List中也可以直接使用ForEach。
  myList.forEach((value) {
    print("这是List.forEach：$value");
  });

  List list1 = [1, 3, 4];
  var newList1 = list1.map((value) {
    if (value % 2 == 0) {
      return value * 2;
    } else {
      return (value + 1) * 2;
    }
  });
  print(newList1.toList()); // [2, 6, 8]

  List list2 = [1, 3, 4, 5, 7, 8, 9];
  var newList2 = list2.where((value) {
    return value > 5;
  });
  print(newList2.toList());

  // 判断List中有没有满足条件的值
  List list3 = [1, 3, 4, 5, 7, 8, 9];
  var f1 = list3.any((value) {
    return value > 5;
  });
  print(f1);

  // 判断List中的每一个值是否都满足条件
  List list4 = [1, 3, 4, 5, 7, 8, 9];
  var f2 = list4.every((value) {
    return value > 5;
  });
  print(f2);


  // forEach同样可以用于set和map两种类型
  // set
  var s = new Set();
  s.addAll([1,22,333]);
  s.forEach((value) { 
    print(value);
  });
  
  // map
  Map person = {"name":"zhangsan","age":20,"sex":'男'};
  person.forEach((key, value) { 
    print("$key -- $value");
  });
}

```

