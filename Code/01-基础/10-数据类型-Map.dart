/***
 * Dart数据类型：Map字典
 */

// void main() {
//   // 第一种定义map的方式
//   var person = {
//     "name": "老孟",
//     "age": 18,
//     "work": ["程序员", "老师"]
//   };

//   print(person);
//   print(person["name"]);
//   print(person["age"]);
//   print(person["work"]);
//   var workList = person["work"];
//   print(workList[0]); //
//   // print(person["work"[1]]);
// }


void main() {
  var person = {
    "name": "老孟",
    "age": 18,
    "work": ["程序员", "老师"]
  };
 
  print(person);
  print(person["name"]);
  print(person["age"]);
  print(person["work"]);
 
  // 使用空安全特性简化代码 
  var workList = person["work"] as List?; // 显式转换为 List?
  print(workList?[0]); // 使用空安全操作符访问第一个元素 
}