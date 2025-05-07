/***
 * 内置函数/方法
 *  print，大多数编程语言都内置类似print函数。
 * 
 * 自定义函数/方法
 *  格式如下
 *  返回类型 方法名称(参数1,参数2,....){
 *    方法体
 *    return 返回值
 *  }
 */



void printInfo1(){
  print('我就是一个定义的函数/方法');
}

// 在dart语言中，如果没有明确的数据类型时，void可以省略不写

printInfo2(){
  print('我就是一个定义的函数/方法');
}

int getNumber(){
  var number = 123;
  return number;
}

String printUserInfo(){
  return 'My name is zhangsan';
}


// 定义一个函数，此函数能够自动把数组中的值去重。
List distinctList(){
  String a = "哈哈,呵呵,祖安";
  List list1 = a.split(',');
  return list1;
}

main(){
  printInfo1();
  printInfo2();
  getNumber();
  print(getNumber());
  print(printUserInfo());
  print(distinctList());

  // 演示方法的作用域
  void xxx(){
    void aaa(){
      print(distinctList());
      print('aaa');
    }
    aaa();
  }
  // aaa();
  xxx();

}