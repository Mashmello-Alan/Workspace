## StatefulWidget组件介绍

Flutter学习之初提到过，Flutter中自定义组件其实就是一个类，这个类需要继承StatelessWidget或StatefulWidget。

前者是无状态，状态不可边的widget。

后者是有状态，持有的状态可能在widget生命周期内进行改变。

通俗一点讲：如果想要改变页面中的数据的话，就需要用到StatefulWidget。



## 案例-实现一个动态列表

在lib目录下创建一个alex_fulwidget，在目录中创建一个dart文件，名为alexfulwidget.dart，代码如下：

```dart
import 'package:flutter/material.dart';
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
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Demo"),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    // ListView是FLutter中内置的列表组件，可以快速实现列表的展示。
    return ListView(
      children: [
        Column(
          children: list.map((value) {
            // ListTile是Flutter中内置的一个组件，可以快速实现列表项的展示。
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 5),
        ElevatedButton(
          // 点击事件
          onPressed: () {
            // 通过setState方法添加数据，一般也用于更新数据，更新UI界面
            setState(() {
              list.add("新增一条数据");
              // list.remove("移除一条数据");
            });
          },
          child: const Text("点我，增加数据"),
        ),
        ElevatedButton(
          // 点击事件
          onPressed: () {
            // 通过setState方法添加数据，一般也用于更新数据，更新UI界面
            setState(() {
              // list.add("新增一条数据");
              list.removeLast();
            });
          },
          child: const Text("点我，移除数据"),
        ),
      ],
    );
  }
}
```

AI编程：

```dart
import 'package:flutter/material.dart';

/**
 * @author AlexRomeo
 * @date 2023/10/10
 */

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Demo"),
        ),
        body: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        ...list.map((value) {
          return ListTile(
            title: Text(value),
          );
        }).toList(),
        const SizedBox(height: 5),
        ElevatedButton(
          onPressed: () {
            setState(() {
              list.add("新增一条数据");
            });
          },
          child: const Text("点我，增加数据"),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (list.isNotEmpty) {
                list.removeLast(); // 移除列表中的最后一个元素
              }
            });
          },
          child: const Text("点我，移除数据"),
        ),
      ],
    );
  }
}
```



基本上等与是完成了购车车的数据增加和删除

