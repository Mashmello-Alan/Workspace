## AS软件中的项目结构

使用AS创建项目之后，默认是以Android的方式打开的，并不是Project的方式，所以显示的文件并不完整。例如说，找不到Main入口，需要将工程从Android切换为Project，如下图。

![vt8jdqZ3up](http://images.alexromeo.net:80/typora/202504080927324.gif)

如果工程结构不正确的话，可以通过open按钮重新打开Flutter的项目。

![6ykDaUliuV](http://images.alexromeo.net:80/typora/202504080949307.gif)

### 项目结构解读

| 文件夹                | 作用                                                         |
| --------------------- | ------------------------------------------------------------ |
| android               | android平台的相关代码没，如果创建项目时，勾选了iOS平台，那么在工程结构中还会有一个iOS的目录 |
| lib                   | flutter相关代码，后续开发时，项目的代码基本上就在此文件夹下。 |
| test                  | 用于存放测试代码                                             |
| pubspec.yaml          | 配置文件，一般存放一些第三方的依赖                           |
| analysis_options.yaml | 分析dart语法的文件，老项目升级成新项目的时候有警告信息的话，可以考虑将其删除。 |





## Flutter入口文件、入口方法

每一个Flutter项目的lib目录里面都有一个main.dart文件，这个文件就是flutter项目的入口文件，main.dart的代码：

```dart
void main(){
    runApp(MyApp());
}

// 也可以简写为

void main() => runApp(MyApp());
```

> Tips：
>
> 上述是伪代码，作为示例演示，因为没有MyApp()方法，所以如果自己编写的时候，会提示错误。

其中的main方法就是dart（flutter）的入口方法，runApp方法是Flutter的入口方法，MyApp是自定义的一个组件。



## Flutter的Demo Center组件的使用



### Demo1

```dart
/**
 * @author AlexRomeo
 * @date 2025/4/8.
 */
import 'package:flutter/material.dart';

main() {
  runApp(const Center(
    child:Text(
      "你好，Flutter！",
      textDirection:TextDirection.ltr,
    ),
  ));
}
```

> const关键字的作用是用来表示常量。

代码解释：

| API           | 作用                                                     |
| ------------- | -------------------------------------------------------- |
| textDirection | 用于指定文本方向属性：从左到右（LTR），从右到左（RTL）。 |



AS有时候可能会无法识别到项目的运行环境，导致弹出下图中的错误提示（无法运行）

![image-20250408100253062](http://images.alexromeo.net:80/typora/202504081002114.png)

解决方法是手动在右上角选择运行的设备，然后再点击运行，稍后即可看到内容

> Tips：
>
> 项目需要构建，安装到模拟器中，过程需要耐心等待。

![image-20250408100800432](http://images.alexromeo.net:80/typora/202504081008505.png)



### Demo2

给Text组件增加一些装饰

```dart
/**
 * @author AlexRomeo
 * @date 2025/4/8.
 */
import 'package:flutter/material.dart';

main() {
  runApp(const Center(
    child:Text(
      "你好，Flutter！",
      textDirection:TextDirection.ltr,
      style:TextStyle(
        fontSize:40.0,
        color:Color.fromRGBO(244,233,121,0.5),
      ),
    ),
  ));
}
```

代码解释

| API             | 作用                                                         |
| --------------- | ------------------------------------------------------------ |
| style:TextStyle | 文本风格属性                                                 |
| fontSize        | 文字大小                                                     |
| color           | 一个用于创建RGBA颜色的Flutter函数，接受4个参数，红色、绿色、蓝色和不透明度，参数的取值范围是0到255（颜色）和0到1（透明度）。 |

效果如下图

![image-20250408101111104](http://images.alexromeo.net:80/typora/202504081011181.png)





## 利用MaterialApp和Scaffold两个组件装饰App

### MaterialApp

MaterialApp是一个方便的Widget（组件），它封装了应用程序实现所需要的一些Widget，一般作为定位Widget来使用。

常见属性如下

| 组件英文 | 组件中文 |
| -------- | -------- |
| home     | 主页     |
| title    | 标题     |
| color    | 颜色     |
| theme    | 主题     |
| routes   | 路由     |



### Scaffold

Scaffold是Material Design布局结构的基本实现，此类用于显示drawer、snackbar和底部sheet的API。

几个主要属性如下

| 属性   | 作用                                          |
| ------ | --------------------------------------------- |
| appBar | 显示在界面顶部的一个Appbar，通常用于app的名称 |
| body   | 当前界面所显示的主要内容Widget                |
| drawer | 抽屉菜单控件                                  |



### Demo

```dart
/**
 * @author AlexRomeo
 * @date 2025/4/8.
 */
import 'package:flutter/material.dart';

// 程序的入口点
void main() {
  // 运行应用程序，传入一个MaterialApp实例
  runApp(MaterialApp(
    // 设置应用程序的主页为一个Scaffold实例
    home: Scaffold(
      // 设置应用栏，包含一个标题
      appBar: AppBar(title: const Text("你好，Flutter")),
      // 设置页面主体，居中显示一个文本
      body: const Center(
        child: Text(
          "我是一个文本",
          // 设置文本方向为从左到右
          textDirection: TextDirection.ltr,
          // 设置文本样式，包括字体大小和颜色
          style: TextStyle(
            fontSize: 40.0,
            color: Color.fromRGBO(
              255, 0, 0, 0.5
            ),
          ),
        ),
      ),
    ),
  ));
}
```



## Flutter把内容淡出抽离成一个组件

在Flutter中自定义组件其实就是一个类，这个类需要继承StatelessWidget/StatefulWidget，前期我们都继承StatelessWidget。

StatelessWidget：无状态组件，状态不可边的Widget。

StatefulWidget：有状态组件，持有的状态可能在widget生命周期改变。

> Tips：
>
> 创建的项目，启动后默认的界面中的那个+就是一个有状态组件。

### demo

```dart
/**
 * @author AlexRomeo
 * @date 2025/4/8.
 */
import 'package:flutter/material.dart';

// 程序的入口点
void main() {
  // 运行应用程序，传入一个MaterialApp实例
  runApp(MaterialApp(
    // 设置应用程序的主页为一个Scaffold实例
    home: Scaffold(
      // 设置应用栏，包含一个标题
      appBar: AppBar(title: const Text("你好，Flutter")),
      // 设置页面主体，居中显示一个文本
      body: const MyApp(),
    ),
  ));
}

// 代码格式化快捷键，Ctrl+Alt+L，全局的是Ctrl+Shift+Alt+L
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // StatelessWidget是个抽象类，所以需要实现它里面的抽象方法，这个方法就是build方法。
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "我是一个自定义组件",
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
```



## Container容器组件

容器组件类似于HTML语言中DIV。

| 名称       | 功能                                                         |
| ---------- | ------------------------------------------------------------ |
| alignment  | topCenter：顶部居中对齐，topLeft：顶部左对齐，topRight：顶部右对齐，center：水平垂直居中对齐，centerLeft：垂直居中水平居左对齐，其他对齐方式基本上类似，使用单词拼接即可，比如底部居中对齐：bottomCenter。 |
| decoration | 用来装饰容器的，方法众多，如：decoration:BoxDecoration(color:Colors.blue,..........) |
| margin     | 该属性表示容器与外部其他组件的距离。Edgeinsets.all(20.0)。   |
| padding    | 该属性表示容器内边距，指容器边缘与Child之间的距离。          |
| transform  | 让容器进行一些旋转，transform:Matrix4.ratationZ(0.2)         |
| height     |                                                              |
| width      |                                                              |
| child      | 容器子元素                                                   |



### Demo1

容器的一般基本用法。编写一个main04.dart文件，文件名称可自定义

> 下面的代码中，容器中不应该写child:Text，不符合代码开发的规范，但为了教学中更容易阅读，所以才这么写。

```dart
import 'package:flutter/material.dart';

/**
 * @author AlexRomeo
 * @date 2025/4/8.
 */

main() {
  runApp(MaterialApp(
    home: Scaffold(
        appBar: AppBar(title: const Text("你好，Flutter！")),
        body: const Column(children: [AlexApp()])),
  ));
}

class AlexApp extends StatelessWidget {
  const AlexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text(
          "Hello Flutter!",
          style: TextStyle(color: Colors.black45, fontSize: 20),
        ),
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 200,
        height: 200,

        // decoration是一个抽象类，可以使用它的子类BoxDecoration来装饰容器
        decoration: BoxDecoration(
          color: Colors.red,
          // 容器的边框
          border: Border.all(color: Colors.blue, width: 2),
          //  设置容器的四个角是否有弧度
          borderRadius: BorderRadius.circular(10),
          // 设置阴影效果
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                // Offset代表阴影的偏移量，x代表水平方向，y代表垂直方向
                offset: Offset(2, 2),
                // blurRadius代表阴影的模糊半径
                blurRadius: 5,
                // 代表阴影的扩散半径
                spreadRadius: 2)
          ],
          // gradient实现一个渐变的效果，可以设置渐变的颜色
          gradient: const LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        // 矩阵变化
        transform: Matrix4.rotationZ(0.2),
      ),
    );
  }
}
```



### Demo2

> Demo2中的内容可以理解为是在Demo1上继续编写的。
>
> 如果不想创建新的文件，可以在Demo1中继续编写，或选择将Demo1的内容拷贝到一个新的Dart文件中，然后再继续的编写。
>
> 目的是为了演示在在runApp中如何应用多个组件，如：children: [AlexApp(), MyButten()],

```dart
import 'package:flutter/material.dart';
import 'package:flutter_demo/main04.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/15.
 */

void main() {
  runApp(MaterialApp(
      // home属性，代表应用的首页
      home: Scaffold(
          // AppBar是一个应用栏，它位于应用的顶部
          appBar: AppBar(
              // title属性代表了应用栏的标题
              title: const Text("你好，Flutter")),
          body: const Column(
            children: [AlexApp(), MyButten()],
          ))));
}

class AlexApp extends StatelessWidget {
  const AlexApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: const Text(
          "Hello Flutter!",
          style: TextStyle(color: Colors.black45, fontSize: 20),
        ),
        margin: const EdgeInsets.all(10),
        alignment: Alignment.center,
        width: 200,
        height: 200,

        // decoration是一个抽象类，可以使用它的子类BoxDecoration来装饰容器
        decoration: BoxDecoration(
          color: Colors.red,
          // 容器的边框
          border: Border.all(color: Colors.blue, width: 2),
          //  设置容器的四个角是否有弧度
          borderRadius: BorderRadius.circular(10),
          // 设置阴影效果
          boxShadow: const [
            BoxShadow(
                color: Colors.black,
                // Offset代表阴影的偏移量，x代表水平方向，y代表垂直方向
                offset: Offset(2, 2),
                // blurRadius代表阴影的模糊半径
                blurRadius: 5,
                // 代表阴影的扩散半径
                spreadRadius: 2)
          ],
          // gradient实现一个渐变的效果，可以设置渐变的颜色
          gradient: const LinearGradient(
              colors: [Colors.red, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        // 矩阵变化
        transform: Matrix4.rotationZ(0.2),
      ),
    );
  }
}

// 自定义按钮组件
class MyButten extends StatelessWidget {
  @override
  const MyButten({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      // 设置容器内的内容居中
      alignment: Alignment.center,
      // 设置容器的宽和高
      width: 200,
      height: 40,

      // 设置容器边距,all表示所有的方向的边距
      margin: const EdgeInsets.all(40),
      // 设置容器的装饰效果
      decoration: BoxDecoration(
        color: Colors.blue,
        // 设置容器的圆角
        borderRadius: BorderRadius.circular(10),
      ),

      // 设置容器中的内容
      child: const Text(
        "按钮",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}

```

