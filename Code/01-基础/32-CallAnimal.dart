import '../lib/Animal.dart';

void main(List<String> args) {
  Animal animal = new Animal('萨摩', 3);
  
  // animal._name = '二哈'; 私有属性不允许修改
  animal.age = 4;
  print(animal.getName());

  // animal._run();  // 私有方法，不允许调用
  animal.execRun();
}