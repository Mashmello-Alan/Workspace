## 对象介绍

什么是对象，什么是类？

面向对象编程(OOP)的三个基本特征：封装、继承、多态。

- 封装：封装是对象和类概念的主要特征。封装，是把客观事物封装成抽象的类，并且把自己的部分属性和方法（函数）提供给其他对象调用，而一部分属性和方法则隐藏。
- 继承：面向对象编程语言的一个主要功能，继承是指一种能力，它可以使用现有类的功能，并在无需重新编写原来的类的情况下，直接使用功能，或进行扩展。
- 多态：允许将子类类型的指针赋值给父类类型的指针，同一个函数调用时会有不同的执行效果。



Dart所有的东西都是对象，所有的对象都是继承自Object类，是一门使用类和单继承的面向对象语言，所有的对象都是类的实例，并且所有的类都是由属性和方法组成。



## 入门实例

### 示例1

```dart
class Person{
  String name = '张三';
  int age = 23;
  void printInfo(){
    print("${name} -- ${age}" );
  }
}

void main(List<String> args) {
  // 实例化
  var p1 = new Person();
  var p2 = Person();

  p1.printInfo();
  p2.printInfo();

  print(p1.name);
  print(p2.name);
}
```



### 示例2

```dart
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
```



## Dart中自定义类的默认构造函数

### 示例1

```dart
class Person{
  String name = '张三';
  int age = 20;

  // 默认构造函数，构造函数的定义：与类同名，但没有返回值
  Person(){
    print('我是构造函数中的print方法，我会在类被实例化时触发');
  }

  void printInto(){
    print("${this.name} -- ${this.age}");
  }
}
void main(List<String> args) {
  Person p1 = new Person();
  p1.printInto();
}
```



### 示例2

新版本中dart定义字段需要初始化，且不能为null。

如果不进行初始化，需要在属性前面加上late关键字

```dart
class Person{
  late String name;
  late int age;
  // 默认构造函数
  Person(String name,int age){
    this.name = name;
    this.age = age;
  }

  void printInfo(){
    print("${this.name} -- ${this.age}" );
  }
}

void main(List<String> args) {
  Person p1 = new Person('张三', 20);
  p1.printInfo();
}
```



### 示例3

```dart
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
```



## Dart中自定义类的命名构造函数

dart里面的构造函数可以写多个，但与Java语言中的无参构造和有参构造有一定程度上的相同和不同。

```dart
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
```



## Dart中把类单独抽离（封装）

在当前工程下创建一个目录——lib，在lib目录下创建一个Person.dart文件，代码如下：

```dart
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
```

在项目工程下与lib同级别的目录下创建一个CallPerson.dart的文件，代码如下：

```dart
import '../lib/Person.dart';
void main(List<String> args) {
  Person p1 = new Person.setInfo('王五',80);
  p1.printInfo();
}
```



## Dart中的私有方法和私有属性

Dart和其他的面向对象语言不同，Dart中没有public、private、protected三个修饰符，但我们可以通过使用_把一个属性或方法定义成私有的。

在lib目录下创建一个Animal.dart，代码如下：

```dart
class Animal {
  late String _name; // 私有属性
  late int age;

  Animal(this._name, this.age);

  void printInfo() {
    print("${this._name},${this.age}");
  }

  String getName() {
    return this._name;
  }

  void _run() {
    print('这是一个私有的方法');
  }

  execRun() {
    _run();
  }
}
```

在与lib目录同级别的其他目录中创建一个CallAnimal.dart文件，代码如下：

```dart
import '../lib/Animal.dart';

void main(List<String> args) {
  Animal animal = new Animal('萨摩', 3);
  
  // animal._name = '二哈'; 私有属性不允许修改
  animal.age = 4;
  print(animal.getName());

  // animal._run();  // 私有方法，不允许调用
  animal.execRun();
}
```



## Dart类中的get和set方法

```dart
class Rect{
  late num h;
  late num w;

  // 构造函数
  Rect(this.h,this.w);

  get getArea{
    return this.h * this.w;
  }

  set setHeight(int value){
    this.h = value;
  }
}

void main(List<String> args) {
  Rect r = new Rect(10, 4);
  print("面积：${r.getArea}");

  r.setHeight = 6;
  print("面积：${r.getArea}");

}
```



## 类中的初始化列表

Dart中可以在构造函数体运行之前初始化实例变量

```dart
class Rect {
  late num h;
  late num w;

  // 构造函数
  // Rect(this.h,this.w);
  Rect()
      : h = 2,
        w = 10 {
    print("${this.h} -- ${this.w}");
  }

  get getArea {
    return this.h * this.w;
  }

  set setHeight(int value) {
    this.h = value;
  }
}

void main(List<String> args) {
  Rect r = new Rect();
  print("面积：${r.getArea}");
  r.setHeight = 6;
  print("面积：${r.getArea}");
}
```

