// class Person{
//   String name = '张三';
//   int age = 23;
//   void printInfo(){
//     print("${name} -- ${age}" );
//   }
// }

// void main(List<String> args) {
//   // 实例化
//   var p1 = new Person();
//   var p2 = Person();

//   p1.printInfo();
//   p2.printInfo();

//   print(p1.name);
//   print(p2.name);
// }

class Person {
  String name = '张三';
  int age = 23;
  void getInfo() {
    print("${name} -- ${age}");
  }

  void setInfo(int age) {
    this.age = age; 
  }
}

void main(List<String> args) {
  // 实例化
  Person p1 = new Person();
  p1.setInfo(28);
  p1.getInfo();
}