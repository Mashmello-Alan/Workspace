/***
 * 映射（map）是无序的键值对。
 * 
 * 常用属性：
 *  keys        获取所有的key值
 *  values      获取所有的value值
 *  isEmpty     是否为空
 *  isNotEmpty  是否不为空
 * 
 * 常用方法：
 *  remove(key) 删除指定key的数据
 *  addAll({...}) 合并映射，给映射内增加属性
 *  containsValue 查看映射内的值，返回true/false 
 */

void main(){
  // // 第一种定义方式
  // Map person = {
  //   "name":"张三",
  //   "age":20
  // };

  // print(person);

  // // 第二种定义方式
  // var m = new Map();
  // m["name"] = "李四";
  // m["age"] = 21;
  // print(m);

  // 常用属性和方法
  Map person = {
    "name":"张三",
    "age":20,
    "sex":'男'
  };
  print(person.keys.toList());
  print(person.values.toList());
  print(person.isEmpty);
  print(person.isNotEmpty);
  print(person.keys.first);
  print(person.values.last);

  person.addAll({
    "work":["写代码","送外卖"],
    "height":180
  });

  person.remove("sex");
  print(person);

  print(person.containsKey('name'));
  print(person.containsValue('张三'));
}