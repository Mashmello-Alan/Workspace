## 介绍

与家中使用的网路设备路由器不同，路由器的作用是对网络中的数据进行转发/接收，作为一个网络的关口，这也是为什么很多人/文章中喜欢把路由器称为网关的原因。

Flutter中的路由，通俗的说就是将页面进行跳转的作用，通过Navigator的组件管理路由导航，并提供了管理堆栈的方法，如：Navigator.push和Navigator.pop。

Flutter中给我们提供了两种配置路由跳转的方式，基本路由和命名路由。

Navigator也提供的众多方法中，最为常用的两个方法就是push和pop。



### Navigator.push和Navigator.pop的区别

首先是相同点，两个方法都是Flutter中的用于处理页面导航的两个关键方法。

主要在应用程序的页面堆栈管理中发挥作用，以下是主要区别。

#### Navigator.push

功能：push方法用于将一个新的路由添加到当前的Navigator的堆栈顶部，这意味着它会打开一个新的页面，并且这个新的页面会覆盖当前页面。

行为：执行push方法时，当前的页面会被暂停并保留在堆栈中，等待用户通过某种方式返回时调用，新的页面成为用户可见的页面。

参数：通常接收一个BuildContext对象以及一个Route对象（或其构造器）作为参数，用于构建和推入新的页面。

效果：导航堆栈的深度增加，形成了后进先出（LIFO）的结构。

#### Navigator.pop

功能：pop方法用于从当前Navigator的堆栈中移除顶部的路由，也就是关闭当前页面并返回到前一个页面。

行为：执行pop方法时，当前的页面会被关闭并且从视图中移除，同时堆栈中的前一个页面被恢复，显示给用户。

参数：可以接收一个可选的参数，该参数会被传递给前一个页面，作为返回数据使用。

效果：导航堆栈的深度减小，回到上一个页面。



## 基本路由和命名路由的区别

基本路由也称为“隐式路由”。

### 基本路由（Implicit Routing）

- 定义与使用：基本路由是通过直接向Navigator提供一个Route对象来实现页面跳转的。通常在代码中直接实例化一个页面widget并通过Navigator.push方法进行推入。
- 灵活性：每次调用push方法时，需要明确指定要推入的页面类型或构造函数，这提供了较高的即时灵活性，但可能导致代码重复或不易管理。
- 适用场景：适用于简单应用或一次性页面跳转，当页面跳转逻辑较为直接且不需要复用时。

### 命名路由（Named Routing）

- 定义与使用：命名路由是在MaterralApp或CupertionApp的routes属性中预先定义好的，通过路由名称（字符串）而非直接使用Route对象来导航，使用Navigator.pushNamed方法或Navigator.pushReplaceNamed方法进行页面跳转。
- 组织性与可维护性：命名路由似的代码更加模块化和易于维护，因为路由逻辑集中定义，且路由名称采用字符串，易于理解和复用。
- 适用场景：适合大型应用或需要频繁跳转多个页面的情况，尤其是在当前页面跳转逻辑复杂，需要清晰管理和可能复用时。

### 总结

基本路由更直接、灵活，适合快速原型开发或简单应用。

命名路由提供更高的代码的组织性和可维护性，特别使用复杂应用的导航管理，通过路由名称统一管理页面跳转逻辑，便于团队协作和后期维护。



## Flutter中普通路由使用

比如我们想要从HomePage组件跳转到SearchPage组件（假设该组件已存在），书写的方法如下：

- 在HomePage中引入SearchPage.dart

  ```dart
  import '../path/SearchPage.dart';
  ```

- 在HomePage中通过代码进行跳转

  ```dart
  Center(
      child:ElevatedButton(
          onPressed:(){
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder:(context){
                          return const SearchPage();
                      },
                  ),
              );
          },
      ),
  );
  ```

  



## Flutter中的普通路由跳转传值

跳转传值和调用组件传值的实现方法基本是一样的。

lib中创建一个目录，名为Route_Demo，在目录中创建一个dart文件，名为SearchPage.dart

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/5/7.
 */

class SearchPage extends StatefulWidget{
  final String title;

  const SearchPage({super.key, this.title = 'SearchPage'});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

// 定义一个私有的状态类_SearchPage，继承State类并关联到SearchPage
class _SearchPageState  extends State<SearchPage>{
  @override
  Widget build(BuildContext context) {
    // 返回一个Scaffold组件，用于创建一个基本的页面结构
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("我是跳转后的页面"),
      ),
    );
  }
}
```

同样的目录下，编写一个RouteDemo01.dart

```dart
import 'package:flutter/material.dart';
import 'package:flutter_demo/Route_Demo/SearchPage.dart';
/**
 * @author AlexRomeo
 * @date 2025/5/7.
 */

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("RouteSkip Demo"),
          centerTitle: true,
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        // 按钮
        // 点击事件
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const SearchPage();
              },
            ),
          );
        },
        child: const Text("点击按钮跳转到搜索页面"),
      ),
    );
  }
}
```



## Flutter中的命名路由

在上个案例的目录下创建一个Named_Route_Demo.dart文件。

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/5/7.
 */

// FirstPage
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/secondpage');
          },
          child: Text("Go to Second Page"),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.pushNamed(context, '/secondpage');
            Navigator.pop(context);
          },
          child: Text("Go back First Page"),
        ),
      ),
    );
  }
}

// 是否需要在组件（widget）中编写路由表？
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // 应用启动时，提供一个默认的显示页面
      home: FirstPage(),
      routes: {
        '/secondpage': (context) => SecondPage(),
      },
    );
  }
}

main() {
  runApp(MyApp());
}
```



## 课后作业

自习手势组件：GestureDetector

每人提交一份手势组件的代码，包含：点击、双击、长按、滑动、缩放等。



