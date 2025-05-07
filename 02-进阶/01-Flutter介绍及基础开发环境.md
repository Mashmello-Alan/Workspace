## 01-Flutter介绍

Flutter是谷歌公司开发的一款开源、免费的UI框架，可以快速的在Android和IOS上构造高质量的APP。它最大的特点是跨平台及高性能。

目前Flutter已支持IOS、Android、Web、Windows、MacOS、Linux等。

市面上已有很多的混合App开发框架，但是有些混合App开发框架主要是在很对前端开发者：比如ReactNative（基于React）、lonic（基于Vue、React）。有写则是针对.Net平台开发者的。



## Windows上面搭建Flutter Android运行环境

### Flutter Android环境搭建所需要软件

- JDK、Android Studio、Flutter
- JDK配置JAVA_HOME和bin目录即可。



### Flutter安装与配置

从官方网站获取能够对应当前系统中Dart版本的Flutter后，然后解压，在系统中配置环境变量，将Flutter的bin目录配置到Path中即可。

在cmd中输入命令确认版本

```cmd
C:\Users\alex>dart --version
Dart SDK version: 3.3.0 (stable) (Tue Feb 13 10:25:19 2024 +0000) on "windows_x64"
```



Flutter官方下载链接（含对应版本）：https://docs.flutter.dev/release/archive



![image-20250401082343542](http://images.alexromeo.net:80/typora/202504010823606.png)



在Path中配置变量，如下图

![image-20250401084138072](http://images.alexromeo.net:80/typora/202504010841189.png)

在cmd中输入命令

```cmd
flutter --version
```

·首次安装的，在反馈的结果中会有如下信息

![image-20250401084504301](http://images.alexromeo.net:80/typora/202504010845373.png)



## Android Studio安装及配置

### 安装

在文档中没有出现的截图内容则表示默认执行了下一步（当前AS的版本号：2023.2.1.23-windows）



修改软件的安装目录，将原本路径中的C改为D即可。

![image-20250401085643342](http://images.alexromeo.net:80/typora/202504010856476.png)

耐心等待安装完成，然后启动AS开始进行配置

选择不导入配置

![img](https://images.alexromeo.net/typora/202504010859571.png)

下图是在问是否愿意帮助Google公司改进软件，点击拒绝即可。

![image-20250401090032426](http://images.alexromeo.net:80/typora/202504010900493.png)



下图中因“无法访问Android SDK”所出现的提示，点击取消，点击Next。

![image-20250401090122077](http://images.alexromeo.net:80/typora/202504010901135.png)

![image-20250401090222438](http://images.alexromeo.net:80/typora/202504010902489.png)

![image-20250401090849208](http://images.alexromeo.net:80/typora/202504010908266.png)

所有都选择接受，然后点击Finish。

![image-20250401091724851](http://images.alexromeo.net:80/typora/202504010917906.png)

之后就是自动下载及安装配置的过程，耐心等待即可，切记不要中断。

> Tips：如中断的话，需要清理感情后才不会影响下次的安装。

![image-20250401091843454](http://images.alexromeo.net:80/typora/202504010918518.png)

当完成后，点击Finish即可完成重启。

![image-20250401092030794](http://images.alexromeo.net:80/typora/202504010920856.png)

### 安装相关的插件

![image-20250401092210888](http://images.alexromeo.net:80/typora/202504010922942.png)

![image-20250401092238474](http://images.alexromeo.net:80/typora/202504010922529.png)

![image-20250401092301057](http://images.alexromeo.net:80/typora/202504010923149.png)

重启ide之后，在主页就可以看到“New Flutter Project”

![image-20250401092433915](http://images.alexromeo.net:80/typora/202504010924980.png)



### 更改Flutter的国内镜像

搭建环境过程中需要下载很多的资源文件，当一些资源下载不了的时候，可能会报各种错误，在国内访问Flutter的时候，可能会受到限制，Flutter官方为我们提供了国内的镜像地址。



#### 错误1： Visual Studio - develop Windows apps

如果只是开发Flutter App的话，可以忽略此错误，如果是要开发Windows桌面应用的话，此错误必须解决。



#### 错误2：Android toolchain -develop for Android devices：X Unable to locate Android SDK

在环境变量下配置AndroidSDK的目录

![image-20250401095645586](http://images.alexromeo.net:80/typora/202504010956629.png)

如果配置好之后依然弹出此错误，在cmd中执行命令，然后一直输入y直到完成

```cmd
flutter doctor --android-licenses
```

如果此命令无法执行的话，打开Android Studio软件，按照如下截图安装工具。

![image-20250401104843744](http://images.alexromeo.net:80/typora/202504011048805.png)

![image-20250401104931679](http://images.alexromeo.net:80/typora/202504011049747.png)

之后重新打开cmd，执行命令即可

```cmd
flutter doctor --android-licenses
```



## 使用AS创建项目

点击“New Flutter Projact”

![1874c542b97bf0b80c83bd540e3610e](http://images.alexromeo.net:80/typora/202504011054509.png)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          

由于AS属于安卓原生开发软件，过去开发安卓应用的时候都是基于Java语言进行的，所以该软件创建项目的时候默认都会使用Java语言进行，需要修改为Flutter。

首次创建项目的时候需要指定Flutter的SDK路径，此处还需要注意，指定到Flutter的根目录即可。如下图

![image-20250401110009410](http://images.alexromeo.net:80/typora/202504011100465.png)



![image-20250401110213706](http://images.alexromeo.net:80/typora/202504011102785.png)

| 配置项名称       | 配置项值                                                   |
| ---------------- | ---------------------------------------------------------- |
| Project name     | 项目名称，项目名称需要小写                                 |
| Project Location | 项目存储的路径                                             |
| Description      | 对于该项目的描述/注释                                      |
| Project type     | 项目类型，保持默认即可。                                   |
| Organization     | 组织信息，此处建议使用公司的域名反写，类似于java中的包名称 |
| Android Language | 保持默认                                                   |
| iOS language     | 保持默认                                                   |
| Platforms        | 项目未来运行/部署的平台。                                  |



点击Create之后，可能会因为路径的问题弹出一个窗口，点击新弹出的窗口中create即可。

> Tips：根据路径是否存在会提示创建，如路径存在的话则不提示窗口。



等待片刻后，ide会把项目创建好，如下图：

![image-20250401110750241](http://images.alexromeo.net:80/typora/202504011107331.png)

此时项目并不能运行，如果想要运行项目的话，必须通过File-open，找到此项目名称中的Android的文件，如下图：

![image-20250401110919559](http://images.alexromeo.net:80/typora/202504011109609.png)

点击“This Windows”或“New Windows”都可以，文档中选择This Windows。

![image-20250401110928139](http://images.alexromeo.net:80/typora/202504011109178.png)

第一次打开的时候会比较慢，项目需要下载Gradle，时间长短与网络有较大的关联，通常在15分钟左右即可完成，如下图：

![22ab322a016bd167437932a1f55f45f](http://images.alexromeo.net:80/typora/202504011114509.png)

第一次下载的时候会可能因为网络的原因导致下载失败，可以点击File中的同步工具，再次进行自动下载。

![image-20250401111522456](http://images.alexromeo.net:80/typora/202504011115534.png)



## 安装模拟机

### 虚拟机存放路径的配置

默认的情况下所有的安卓模拟器都会安装在C盘下。其路径如：`C:\Users\alex\.android\avd`。

如果想要修改虚拟机的存放路径，可以通过增加系统环境变量的方式完成。

| 变量名           | 变量值 |
| ---------------- | ------ |
| ANDROID_AVD_HOME | 路径   |



除此修改环境变量的方式，还可以提前创建链接文件的方式将avd的目录映射到其他目录中，使用windows自带的命令即可。

```cmd
mklink /D C:\Users\alex\.android\avd F:\software\Dev\Android_AVD
```

![image-20250408081704493](http://images.alexromeo.net:80/typora/202504080817577.png)



### 创建安卓模拟器

点击Tools，找到Device Manager，然后去下载一个手机模拟器

![image-20250408083225340](http://images.alexromeo.net:80/typora/202504080832449.png)

在右侧弹出的页面中红，点击加好，然后根据下图进行选择

![image-20250408083700814](http://images.alexromeo.net:80/typora/202504080837884.png)

选择系统镜像

![image-20250408083846779](http://images.alexromeo.net:80/typora/202504080838856.png)

保持默认进行下一步即可。

![image-20250408084004227](http://images.alexromeo.net:80/typora/202504080840292.png)

然后在AS右侧工具栏中可以看到设备管理中新增了一个模拟器出来。

![image-20250408084059677](http://images.alexromeo.net:80/typora/202504080840721.png)

点击对应的模拟器小三角进行开机。

![image-20250408084133786](http://images.alexromeo.net:80/typora/202504080841837.png)

首次启动时较慢，需要加载更多的内容

![1744073063799](http://images.alexromeo.net:80/typora/202504080844210.png)



等待模拟器完成开机后，运行app，第一次运行的时候，可能需要先构建项目，点击顶部的“锤子”

![image-20250408085520813](http://images.alexromeo.net:80/typora/202504080855892.png)

然后再点击锤子左边的绿色的小三角运行项目即可

APP启动成功后，如下截图。

![image-20250408090022327](http://images.alexromeo.net:80/typora/202504080900397.png)

