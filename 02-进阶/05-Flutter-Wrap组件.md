## 组件介绍

Wrap可以实现流布局，单行的Wrap跟Row表现几乎一致，单列的Wrap则跟Column表现几乎一致。

Row和Column都是单一属性，单行或单列。Wrap组件突破了这个限制，mainAxis（主轴）上空间不足的时候，会自动向crossAxis（交叉轴）进行扩展。



| 属性              | 说明                                                         |
| ----------------- | ------------------------------------------------------------ |
| direction         | 主轴的反向，默认是水平                                       |
| alignment         | 主轴的对齐方式                                               |
| spacing           | 主轴方向上的间距                                             |
| textDirection     | 文字方向                                                     |
| verticalDirection | 定义了children摆放的顺序，默认是down，见Flex相关属性介绍     |
| runAlignment      | run的对齐方式，run可以理解为新的行或列，如果是水平方向布局的话，run也可以理解为是新的行。 |
| runSpacing        | run的间距                                                    |



### 自定义一个按钮组件

在lib目录下创建一个WrapDemo目录，然后创建一个ButtonDemo.dart，代码如下：

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/23.
 */

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Button")),
        body: const LayoutDemo(),
      ),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // return Button("第一集", onPressed: () {});
    return Row(
      children: [
        Button("第1集", onPressed: () {}),
        Button("第2集", onPressed: () {}),
        Button("第3集", onPressed: () {}),
        Button("第4集", onPressed: () {}),
        // 下面的内容不注释掉会超出屏幕中一行容纳的最高数据
        // Button("第5集", onPressed: () {}),
        // Button("第6集", onPressed: () {}),
        // Button("第7集", onPressed: () {}),
        // Button("第8集", onPressed: () {}),
      ],
    );
  }
}

class Button extends StatelessWidget {
  // 文字内容变量
  String text;

  // Function后面的问号是函数的返回值
  void Function()? onPressed;

  Button(this.text, {required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    // ElevatedButton是Flutter官方提供的一个内置按钮组件
    return ElevatedButton(
      // 点击事件
      onPressed: onPressed,
      style: ButtonStyle(
        // 背景颜色
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        // 前景（文字颜色）
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Text(text),
    );
  }
}
```



### 通过Wrap组件实现影视App选集效果

在WrapDemo目录下创建WrapDemo.dart，代码如下：

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/23.
 */

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Button")),
        body: const LayoutDemo(),
      ),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // return Button("第一集", onPressed: () {});
    return Wrap(
      spacing: 10,
      verticalDirection: VerticalDirection.down,
      alignment: WrapAlignment.spaceBetween,
      runAlignment: WrapAlignment.center,
      runSpacing: 10,
      children: [
        Button("第1集", onPressed: () {}),
        Button("第2集", onPressed: () {}),
        Button("第3集", onPressed: () {}),
        Button("第4集", onPressed: () {}),
        Button("第5集", onPressed: () {}),
        Button("第6集", onPressed: () {}),
        Button("第7集", onPressed: () {}),
        Button("第8集", onPressed: () {}),
        Button("第9集", onPressed: () {}),
        Button("第10集", onPressed: () {}),
        Button("第11集", onPressed: () {}),
        Button("第12集", onPressed: () {}),
        Button("第13集", onPressed: () {}),
        Button("第14集", onPressed: () {}),
        Button("第15集", onPressed: () {}),
        Button("第16集", onPressed: () {}),
        Button("第17集", onPressed: () {}),
      ],
    );
  }
}

class Button extends StatelessWidget {
  // 文字内容变量
  String text;

  // Function后面的问号是函数的返回值
  void Function()? onPressed;

  Button(this.text, {required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    // ElevatedButton是Flutter官方提供的一个内置按钮组件
    return ElevatedButton(
      // 点击事件
      onPressed: onPressed,
      style: ButtonStyle(
        // 背景颜色
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        // 前景（文字颜色）
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      child: Text(text),
    );
  }
}
```

效果图如下：

![image-20250423151521135](http://images.alexromeo.net:80/typora/202504231515219.png)