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
