// class Person{
//   String name = '张三';
//   int age = 20;

//   // 默认构造函数，构造函数的定义：与类同名，但没有返回值
//   Person(){
//     print('我是构造函数中的print方法，我会在类被实例化时触发');
//   }

//   void printInto(){
//     print("${this.name} -- ${this.age}");
//   }
// }
// void main(List<String> args) {
//   Person p1 = new Person();
//   p1.printInto();
// }

// class Person{
//   late String name;
//   late int age;
//   // 默认构造函数
//   Person(String name,int age){
//     this.name = name;
//     this.age = age;
//   }

//   void printInfo(){
//     print("${this.name} -- ${this.age}" );
//   }
// }

// void main(List<String> args) {
//   Person p1 = new Person('张三', 20);
//   p1.printInfo();
// }

class Person {
  late String name;
  late int age;

  // 简写的默认构造
  Person(this.name, this.age) {}
  void printInfo() {
    print("${this.name} -- ${this.age}");
  }
}
void main(List<String> args) {
  Person p1 = new Person('张三', 18);
  p1.printInfo();
}
