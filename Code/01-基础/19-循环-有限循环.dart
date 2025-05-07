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

