## 组件介绍

在Flutter中提供了一个Images组件来加载并显示图片，Image的数据源可以是asset，文件、内存和网络。

在日常开发中常用的两个方式是本地（asset）和网络（network）



### Image组件的常用属性如下

| 名称     | 类型     | 说明                                                         |
| -------- | -------- | ------------------------------------------------------------ |
| alignmen | alignmen | 图片的对齐方式                                               |
| color    |          | 设置图片的背景颜色，通常和colorBlendMode配合一起使用，这样的话可以让图片颜色和背景颜色混合 |
| fit      | BoxFit   | fit属性用来控制图片的拉伸和挤压，这些操作根据父容器进行对比的。 |
| repeat   |          | 平铺的效果，ImageRepeat.repeat：横向和纵向都进行重复。       |
| width    |          |                                                              |
| height   |          |                                                              |



## 加载图片



### 加载网络图片

在lib目录中新建一个目录——ImageDemo，在该目录下创建一个新的dart文件——Network_Image_Demo

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/16.
 */

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("加载网络图片Demo"),
        ),
        body: const LoodNetworkImage(),
      ),
    ),
  );
}

class LoodNetworkImage extends StatelessWidget {
  const LoodNetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 350,
        decoration: const BoxDecoration(color: Colors.yellow),
        // Image.network中的第一个参数为网络图片的url
        child: Image.network(
          "http://images.alexromeo.net/typora/202504161501528.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
```



#### 图片的圆形效果

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/16.
 */

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("加载网络图片Demo"),
        ),
        body: const LoodNetworkImage(),
      ),
    ),
  );
}

class LoodNetworkImage extends StatelessWidget {
  const LoodNetworkImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Container(
          width: 150,
          height: 150,
          decoration: const BoxDecoration(color: Colors.yellow),
          // Image.network中的第一个参数为网络图片的url
          child: Image.network(
            "http://images.alexromeo.net/typora/202504161501528.jpg",
            fit: BoxFit.cover,
            width: 150,
            height: 150,
          ),
        ),
        // child: Image.network(
        //   "http://images.alexromeo.net/typora/202504161501528.jpg",
        //   fit: BoxFit.cover,
        //   width: 150,
        //   height: 150,
        // ),
      ),
    );
  }
}
```



### 加载本地图片

在项目的根目录下创建images文件夹，在文件夹下面存放所有的图片资源。（此文件夹中也可以根据业务的需求来命名二级文件夹）

打开pubspec.yaml文件，在文件中声明创建的文件夹路径，需要修改的内容在该文件默认的62行。

```yaml
  # To add assets to your application, add an assets section, like this:
  assets:
    - images/47.jpg
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg
```

在代码中使用本地图片资源

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/16.
 */

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("加载本地图片Demo"),
        ),
        body: const LoadLocalImage(),
      ),
    ),
  );
}

class LoadLocalImage extends StatelessWidget {
  const LoadLocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        "images/47.jpg",
        width: 150,
        height: 150,
        fit: BoxFit.cover,
      ),
    );
  }
}
```



#### 图片的圆形效果

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/16.
 */

main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("加载本地图片Demo"),
        ),
        body: const LoadLocalImage(),
      ),
    ),
  );
}

class LoadLocalImage extends StatelessWidget {
  const LoadLocalImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Container(
          width: 150,
          height: 150,
          child: Image.asset(
            "images/47.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
```



## 同时使用本地及网络图片

模拟场景：解决某app的首次登录/注册用户的头像问题。

在真是的app开发场景中，用户在未上传头像的时候，都是由app提供了一个默认的头像。

> Tips：当前的代码因为没有后段技术提供的接口功能，所以代码只是模拟环境，无法做到真实的场景。



因为使用的都是同一张图片，为了区分效果，将本地的头像使用的大小为50，网络图片使用的大小为150。



### 封装本地图片

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/16.
 */

class CO_Local_Image extends StatelessWidget {
  const CO_Local_Image({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.asset(
          "images/47.jpg",
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

```



### 封装网络图片

```dart
import 'package:flutter/material.dart';
/**
 * @author AlexRomeo
 * @date 2025/4/16.
 */

class CO_Network_Image extends StatelessWidget {
  final String url;

  const CO_Network_Image(this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Image.network(
          url,
          fit: BoxFit.cover,
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
```



### 调用组件实现头像判断

```dart
import 'package:flutter/material.dart';
import 'ImageDemo/CO_Local_Image.dart';
import 'ImageDemo/CO_Network_Image.dart';

/**
 * @author AlexRomeo
 * @date 2025/4/16.
 */

void main() {
  String url = "http://images.alexromeo.net/typora/202504161501528.jpg";
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("用户头像Demo"),
        ),
        // User_Avatar()表示调用本地图片资源，
        // User_Avatar(url)表示调用网络图片资源
        // body: User_Avatar(),
        body: User_Avatar(url:url),
      ),
    ),
  );
}

Widget User_Avatar({String url = ""}){
  // 如果url为空的话，则使用本地图片，否则使用网络图片
  // if (url.isEmpty){
  //   return const CO_Local_Image();
  // }else{
  //   return CO_Network_Image(url);
  // }
  // 使用三目运算的方式进行判断
  return url.isEmpty ? const CO_Local_Image() : CO_Network_Image(url);
}
```

