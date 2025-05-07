class Person {
  late String name;
  late int age;

  //简写的默认构造
  Person(this.name, this.age);
  Person.now() {
    print('我是命名构造函数');
  }

  Person.setInfo(this.name, this.age);

  // 函数如果没有返回值，可以省略void
  printInfo() {
    print("${this.name} -- ${this.age}");
  }
}

void main(List<String> args) {
  Person p1 = new Person("张三", 20);
  p1.printInfo();

  Person p2 = new Person.now();
  // p2.printInfo();

  Person p3 = new Person.setInfo("李四", 30);
  p3.printInfo();
}