/***
 * 在开发场景中有一个特别实用的功能：对数组中重复的内容进行移除。
 * Set是没有顺序的且不能重复的集合，所以不能通过索引的方式去获取值。
 */

void main(){
  var s = new Set();
  s.add('香蕉');
  s.add('苹果');
  s.add('苹果');
  // print(s);


  // 使用set把List中重复的数据处理掉。
  List myList = ['香蕉','aa','青提','哈密瓜','榴莲','青提','哈密瓜','榴莲','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'];
  var s1 = new Set();
  s1.addAll(myList);
  print(s1);


  // 假设通过参数传值的方式，获得一个String类型的字符串，香蕉,aa,青提,哈密瓜,榴莲,青提,哈密瓜,榴莲,aaa,aaa,aaa,aaa,aaa,aaa,aaa,aaa,aaa,aaa
  // 能否通过代码直接去重？
  // 字符串可以通过split切割后获得一个list，set可以通过addAll方法拼接List。

  String str = "香蕉,aa,青提,哈密瓜,榴莲,青提,哈密瓜,榴莲,aaa,aaa,aaa,aaa,aaa,aaa,aaa,aaa,aaa,aaa";

  var s2 = new Set();
  s2.addAll(str.split(','));
  print(s2);
} 