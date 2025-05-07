## Dart类中的静态成员、静态方法

静态变量（也称为类变量）和非静态变量（实例变量）是在面向对象编程中常见的概念，它们之间有几个重要的区别

### 作为范围

- 静态变量：属于类的本身，而不是类的任何特定实例，无论创建多少个类的实例，静态变量都只是一份内存空间，在类的所有实例之间共享。
- 非静态变量：属于类的每个实例，每个实例都有自己的一份非静态变量副本，每个对象的非静态变量都有自己的内存分配。



### 访问方式

- 静态变量：可以通过类名称直接访问，比如说，class.变量名称
- 非静态变量：需要通过类的实例对象（通常就是new的那个对象）来访问，比如说，Person p = new Person()，p就是Person类的对象，其变量访问需要通过p.类名称。



### 生命周期

- 静态变量：在类被加载时初始化，一直存在于内存中，指导程序结束或类被卸载。
- 非静态变量：在创建类的实例时初始化，随着对象的创建和销毁而存在和销毁。



### 使用场景

- 静态变量：通常用于表示类级别的属性，如常量、计数器等，或在多个实例之间共享的数据。
- 非静态变量：用于表示对象的特定属性，每个对象都可能具有不同的值。



### 示例

```dart
//  import '../../21软本1/01-基础/10-Dart的面向对象/01-示例1.dart';

// class Person1{
//   static String name = '张三';
//   static void show(){
//     print(name);
//   }
//  }

//  void main(List<String> args) {
//   print(Person1.name);
//   Person1.show();
// }

class Person2 {
  /**
   * 非静态方法可以访问静态成员以及非静态成员
   */
  static String name = '张三';
  int age = 20;
  static void show() {
    print(name);
  }

  void printInfo() {
    print(name);
  }

  static void printUserInfo() {
    print(name);
    show();

    // print(this.age);  // 静态方法无法访问非静态的属性
    // printInfo();  // 静态方法无法访问非静态的方法。
  }
}

void main(List<String> args) {
  Person2 p = new Person2();
  p.printInfo();

  Person2.printUserInfo();
}
```



## Dart中的对象操作符



| 名称 | 作用                                                         |
| ---- | ------------------------------------------------------------ |
| ?    | 条件运算符，新版中已弃用                                     |
| as   | 类型转换                                                     |
| is   | 类型判断                                                     |
| ..   | 级联操作（连缀），用于在同一个对象上执行一些列操作时，而不需要重复引用该对象。 |



### 示例

```dart
class Animal{
  void makeSound(){
    print("唱歌");
  }
}

class Dog extends Animal{
  @override
  void makeSound(){
    print('Woof!');
  }

  void fetch(){
    print("Fetching...");
  }
}

void main(List<String> args) {
  Animal animal = Dog(); // 创建一个Dog对象并将其视为Animal类型
  animal.makeSound();   // 输出内容为：Woof！
}
```



### is类型判断

```dart
class Person {
  String name;
  num age;

  Person(this.name, this.age);

  void printInfo() {
    print("${this.name}  --  ${this.age}");
  }
}

void main(List<String> args) {
  Person p = new Person('zhagnsan', 18);

  p.printInfo();

  if (p is Person) {
    p.name = '李四';
  }
  p.printInfo();
  print(p is Object);
}

```



### .. 级联操作

```dart
class Person{
  String name ;
  num age;

  Person(this.name,this.age);

  void printInfo(){
    print("${this.name} -- ${this.age}");
  }
}

void main(List<String> args) {
  Person p1 = new Person('张三', 20);
  p1.printInfo();

  p1
    ..name = '李四'
    ..age = 30
    ..printInfo();
}
```





### super关键字的使用

```dart
class Person{
  late String name;
  late num age;

  Person(this.name, this.age);

  void printInfo() {
    print("${this.name} -- ${this.age}");
  }
}

class Person2 extends Person {
  Person2(String name, num age) : super(name, age) {}
}

void main(List<String> args) {
  Person2 p2 = new Person2('张三', 20);
  p2.printInfo();
}

```



