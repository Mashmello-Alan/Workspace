## BottomNavigationBar组件

BottomNavigationBar是底部导航条，可以让我们自定义底部Tab切换，BottomNavigationBar是Scaffold组件的参数。



### 常见属性

| 名称          | 说明                             |
| ------------- | -------------------------------- |
| items         | 类型为List，底部导航条的按钮集合 |
| iconSize      | icon图标的大小                   |
| currtentIndex | 默认选中的索引值                 |
| onTap         | 选中变化回调函数                 |
| fixedColor    | 选中的颜色                       |



## 案例-自定义底部导航

在lib中新建一个目录（Alex_BottomNavigationBar），新建一个dart（main.dart）

```dart
import 'package:flutter/material.dart';
import 'package:flutter_demo/IconDemo/LocalIcon.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/23.
 */

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.black,

      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("按键Demo")),
        body: const Center(
          child: const Text("待完善内容"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(LocalIcon.wechat, color: Colors.green), label: "微信"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
            BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          ],
        ),
      ),
    );
  }
}

```

效果图如下：

![image-20250423162611661](http://images.alexromeo.net:80/typora/202504231626725.png)

## 案例-底部菜单选中效果

上述案例中仅是实现了导航按钮的功能，但选中之后按钮没有变化效果，接下来新建一个dart（main2.dart）文件编写代码，实现底部菜单的选中效果。

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/5/7.
 */

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState(); // 创建State子类
}

class _TabsState extends State<Tabs> {
  // 底部导航栏默认的索引值，_表示私有属性
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('导航按钮被选中后的效果'),
      ),
      body: const Center(
        child: Text('待完成的内容'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // 默认索引，当APP启动后默认显示的内容或页面
        currentIndex: _currentIndex,
        // 设置点击按钮后的效果
        fixedColor: Colors.blue,
        // 点击事件，用v表示点击的索引
        onTap: (v) {
          // 改变索引值，重新绘制UI
          setState(() {
            _currentIndex = v;
          });
          // 调试代码用，正式上线的app不会带有此行代码
          print(v);
        },

        // 底部导航栏的按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
      ),
    );
  }
}
```



## 案例-导航按钮页面的切换

上一个案例中，完成了按钮的选中后的效果变化，本案例继续优化代码，实现点击导航按钮后，完成页面的切换。

在lib中新建一个目录——pages，在pages目录下再创建一个目录名称为tabs和一个tabs.dart，在pages目录下再创建三个dart文件，名称分别为：home，category，settings，其代码如下。

### code：home.dart

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/5/7.
 */

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('首页待完成的内容'),
    );
  }
}
```



### code：category.dart

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/5/7.
 */

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('分类待完成的内容'),
    );
  }
}
```



### code：settings.dart

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/5/7.
 */

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('设置待完成的内容'),
    );
  }
}
```



### code：Tabs.dart

```dart
import 'package:flutter/material.dart';
import '../home.dart';
import '../category.dart';
import '../settings.dart';
/**
 * @author AlexRomeo
 * @date 2025/5/7.
 */

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Tabs(),
    );
  }
}

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState(); // 创建State子类
}

// 创建State子类
class _TabsState extends State<Tabs> {
  // 底部导航栏默认的索引值，_表示私有属性
  int _currentIndex = 0;

  /**
   * 希望底部导航栏按钮被选中之后，能够随着按钮而改变的页面内容。
   * 加上final关键字的目的是把变量修饰为常量，防止代码被修改。
   */
  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('随按钮选中切换页面内容'),
      ),
      // body: const Center(
      //   child: Text('待完成的内容'),
      // ),
      // 在body中把三个页面通过数组下标的方式引入，与按钮的下标刚好匹配。
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        // 默认索引，当APP启动后默认显示的内容或页面
        currentIndex: _currentIndex,
        // 设置点击按钮后的效果
        fixedColor: Colors.blue,
        // 点击事件，用v表示点击的索引
        onTap: (v) {
          // 改变索引值，重新绘制UI
          setState(() {
            _currentIndex = v;
          });
          // 调试代码用，正式上线的app不会带有此行代码
          print(v);
        },

        // 底部导航栏的按钮
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
        ],
      ),
    );
  }
}
```

