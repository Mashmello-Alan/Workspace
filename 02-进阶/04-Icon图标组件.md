## 组件介绍

在计算机开发中，“icon”（图标）指的是一个小的图形符号或简化的图像，它用来代表一个程序、功能、数据文件或操作系统中的一个操作行为，图标是用户界面中一个非常重要的元素，它们提供了一种直观的方式来识别和访问计算机系统或软件的功能。

其使用场景非常的丰富，包括但不局限于如下场景：

- 桌面图标：操作系统桌面环境中，图标被用于代表和快速访问应用程序、文档、系统功能等。用户可以通过双击图标来启动应用程序或打开文件。
- 任务栏和启动栏图标：在任务栏（如windows）或启动栏（如MacOS的Dock）中，图标用于表示正在运行的程序或常用的应用程序，提供快速访问。
- 文件和文件夹图标：文件系统中每个文件和文件夹都可以拥有自己的图标，帮助用户区分不同类型的内容（如文本文档、音乐文件、视频文件、应用程序等）
- 菜单图标：在软件应用的菜单中，图标用来与菜单项相关联，帮助用户更快识别功能选项。
- 工具栏和按钮图标：在应用程序的工具栏上，图标用于代表具体的操作或工具，比如编辑、保存、删除等。用户可以直接点击图标来执行对应的操作。
- 网站和移动应用图标：在网站设计和移动应用开发中，图标用来指示导航元素或功能，提升用户体验和界面的美观性。
- 系统状态和警示图标：在用户界面中，一些图标用来显示系统状态（如电池电量、网络连接状态）或系统用户注意（如安全警告、错误提示）。



图标设计通常需要考虑其清晰性、易识别性和与应用程序或操作系统的整体视觉风格的协调性。好的涂表设计不仅能美化界面，还能提升软件的易用性和用户满意度。

在企业开发的环境中，图标的设计通常都由UI工程师去完成，大部分的程序员不需要投入过多的精力。

但如果作为独立开发者来说的话肯定是没有UI工程师提供帮助的，所以官方提供了丰富的UI库，官方除了图标还提供了丰富的字体库。

官方链接：https://fonts.google.com



### 使用官方图标

在lib目录下创建一个新的子目录，IconDeme，在子目录中创建UseIconDemo1，代码如下：

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
        appBar: AppBar(title: const Text("官方Icons体验")),
        body: const UseIcon(),
      ),
    ),
  );
}

class UseIcon extends StatelessWidget {
  const UseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Icon(Icons.search, color: Colors.red, size: 40),
          // SizedBox，用来让多个图标之间有间距
          SizedBox(height: 40),

          Icon(Icons.home, color: Colors.blue, size: 40),
          SizedBox(height: 40),
          Icon(Icons.menu, color: Colors.blue, size: 40),
          Icon(Icons.shop, color: Colors.blue, size: 40),
          Icon(Icons.shopping_cart, color: Colors.blue, size: 40),
        ],
      ),
    );
  }
}
```



官方虽然提供了大量的Icon文件，但使用起来需要查询图标的名称，部分时候可能存在网络访问受限导致的工作困难。此时可以使用第三方（阿里）提供的自定义字体和库。



### 使用第三方的图标库

链接：https://www.iconfont.cn

第三方库使用的前提要求必须是注册的账号（免费），

需要什么样的图标在顶部搜索框中直接搜索即可。

将搜索到图标加入到购物车中，本次教学时，所用的图标有，微信、购物车、评论、书，点击购物车，点击“下载代码”。

然后开发软件的工程根目录下创建一个fonts目录，之后将下载好的图标压缩包解压，找到文件夹中以json和ttf结尾的文件拷贝到“fonts”目录中。

接着打开工程中名为pubspec.yaml文件，搜索fonts，然后将原本的注释解开，如下面的格式：

> 需要注意缩进

```yaml
  # To add custom fonts to your application, add a fonts section here,
  # in this "flutter" section. Each entry in this list should have a
  # "family" key with the font family name, and a "fonts" key with a
  # list giving the asset and other descriptors for the font. For
  # example:
  fonts:
    - family: AlexIcon # 指定一个字体的名称，可以根据需求进行自定义
      fonts:
        - asset: fonts/iconfont.ttf
```

在lib/IconDemo目录中创建一个dart文件名为`LocalIcon.dart`，用来管理的本地图标文件。

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/23.
 * ClassName : LocalIcon.dart
 */

class LocalIcon {
  // 构造函数私有化，此代码可以不写。
  LocalIcon._();

  /***
   * 三个参数分别是：图标的16进制编码，字体名称（需要和yaml文件中的family保持相同），第三个参数是是否根据文字方向进行匹配。
   */
  static const IconData wechat =
      IconData(0xf0106, fontFamily: 'AlexIcon', matchTextDirection: true);
  static const IconData book =
      IconData(0xe629, fontFamily: 'AlexIcon', matchTextDirection: true);
  static const IconData comment =
      IconData(0xe891, fontFamily: 'AlexIcon', matchTextDirection: true);
  static const IconData shop_cart =
      IconData(0xe70b, fontFamily: 'AlexIcon', matchTextDirection: true);
}
```



在上一个案例中的代码中，继续编写。

> 首先将自己编写的包进行导入

```dart
import 'package:flutter_demo/IconDemo/LocalIcon.dart';
```

然后在代码中丰富：

```dart
import 'package:flutter/material.dart';
import 'package:flutter_demo/IconDemo/LocalIcon.dart';

/**
 * @author AlexRomeo
 * @date 2025/4/23.
 */

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("官方Icons体验")),
        body: const UseIcon(),
      ),
    ),
  );
}

class UseIcon extends StatelessWidget {
  const UseIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          
          ...
            
          Icon(Icons.lock_open, color: Colors.blue, size: 40),

          SizedBox(height: 60),
          Icon(LocalIcon.book),
          Icon(LocalIcon.wechat),
          Icon(LocalIcon.shop_cart),
          Icon(LocalIcon.comment, size: 40, color: Colors.red),
        ],
      ),
    );
  }
}

```

如果图标未正常显示，可以在AS项目的Terminal中执行命令清除一下缓存

```cmd
flutter pub get
```

如果执行命令后依然存在图标未正常加载，则可能是因为图标不兼容导致。





