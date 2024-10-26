# ducafe_ui_core 使用说明

ducafe_ui_core 是一个 Flutter UI 核心类库,提供了许多实用的扩展方法和工具类,以简化 Flutter 应用程序的 UI 开发。

## 参考

- https://pub.dev/packages/ducafe_ui_core
- https://github.com/ducafecat/flutter_package_ducafe_ui_core
- https://ducafecat.com

## 主要功能

1. 屏幕适配工具 (ScreenUtil)
2. Widget 扩展方法
3. 上下文 (Context) 扩展方法
4. 字符串扩展方法
5. 列表扩展方法
6. 主题访问扩展方法
7. 平台判断扩展方法
8. UI 工具类

## 安装

在 `pubspec.yaml` 文件中添加依赖:

```yaml
dependencies:
  ducafe_ui_core: ^1.0.1
```

然后运行 `flutter pub get` 命令。

## 使用示例

### 屏幕适配

在应用程序的根部初始化 ScreenUtil:

```dart
import 'package:ducafe_ui_core/ducafe_ui_core.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: child,
        );
      },
      child: const HomePage(),
    ),
  );
}
```

### Widget 扩展

示例:

```dart
// 创建一个居中的文本小部件
final centeredText = Text('Hello, World!').center();

// 创建一个带有内边距和阴影的卡片
final styledCard = Text('Card Content')
    .padding(all: 16)
    .card(elevation: 4)
    .boxShadow(blurRadius: 10);

// 创建一个可点击的按钮
final clickableButton = Text('Click me')
    .padding(all: 8)
    .inkWell(onTap: () => print('Button clicked!'));

// 创建一个带有动画效果的缩放小部件
final animatedWidget = Icon(Icons.star)
    .scale(all: 1.5)
    .animate(Duration(milliseconds: 300), Curves.easeInOut);
```

扩展:

- animate: 为小部件添加动画效果
- align: 设置小部件的对齐方式
- alignCenter: 将小部件居中对齐
- alignLeft: 将小部件左对齐
- alignRight: 将小部件右对齐
- alignTop: 将小部件顶部对齐
- alignBottom: 将小部件底部对齐
- parent: 为小部件应用父级小部件
- padding: 为小部件添加内边距
- paddingBottom: 为小部件添加底部内边距
- paddingHorizontal: 为小部件添加水平内边距
- paddingLeft: 为小部件添加左侧内边距
- paddingRight: 为小部件添加右侧内边距
- paddingTop: 为小部件添加顶部内边距
- paddingVertical: 为小部件添加垂直内边距
- paddingDirectional: 为小部件添加方向性内边距
- sliverPadding: 为 Sliver 小部件添加内边距
- opacity: 设置小部件的不透明度
- offstage: 控制小部件是否显示
- neumorphism: 为小部件添加新拟态效果
- boxShadow: 为小部件添加阴影效果
- ripple: 为小部件添加涟漪效果
- rotate: 旋转小部件
- scale: 缩放小部件
- translate: 平移小部件
- transform: 对小部件应用变换
- overflow: 控制小部件的溢出行为
- scrollable: 使小部件可滚动
- expanded: 使小部件在 Flex 容器中扩展
- flexible: 使小部件在 Flex 容器中灵活调整大小
- positioned: 在 Stack 中定位小部件
- positionedDirectional: 在 Stack 中方向性定位小部件
- inkWell: 为小部件添加墨水效果和点击事件
- safeArea: 将小部件放置在安全区域内
- semanticsLabel: 为小部件添加语义标签
- gestures: 为小部件添加手势识别
- center: 将小部件居中
- fittedBox: 调整小部件大小以适应其父级
- fractionallySizedBox: 根据父级尺寸的比例调整小部件大小
- card: 将小部件包装在卡片中
- limitedBox: 限制小部件的最大尺寸
- material: 将小部件包装在 Material 中
- mouseRegion: 为小部件添加鼠标交互区域

### 颜色扩展使用说明

示例:

```dart
context.colors.scheme
```

扩展:

- `primary`: 主要颜色
- `primaryLight`: 主要颜色的亮色版本
- `primaryDark`: 主要颜色的暗色版本
- `canvas`: 画布颜色
- `scaffoldBackground`: 脚手架背景色
- `card`: 卡片颜色
- `divider`: 分割线颜色
- `focus`: 焦点颜色
- `hover`: 悬停颜色
- `highlight`: 高亮颜色
- `splash`: 水波纹颜色
- `unselectedWidget`: 未选中部件的颜色
- `disabled`: 禁用状态颜色
- `secondaryHeader`: 次要标题颜色
- `dialogBackground`: 对话框背景色
- `indicator`: 指示器颜色
- `hint`: 提示文字颜色
- `scheme`: 完整的颜色方案
- `shadow`: 阴影颜色

### 屏幕尺寸信息

示例:

```dart
context.screenWidth
```

扩展:

- `screenWidth`: 获取屏幕宽度
- `screenHeight`: 获取屏幕高度
- `bottomBarHeight`: 获取底部导航栏高度
- `statusBarHeight`: 获取状态栏高度
- `textScaleFactor`: 获取文本缩放因子
- `scaleWidth`: 获取宽度的缩放因子
- `scaleHeight`: 获取高度的缩放因子

### 时间差 Duration 的扩展

示例:

```dart
// 创建一个 5 秒的 Duration
Duration fiveSeconds = 5.seconds;
```

扩展:

- microseconds: 将数字转换为微秒的 Duration
- milliseconds: 将数字转换为毫秒的 Duration
- seconds: 将数字转换为秒的 Duration
- minutes: 将数字转换为分钟的 Duration
- hours: 将数字转换为小时的 Duration
- days: 将数字转换为天的 Duration
- months: 将数字转换为月的 Duration（假设一个月为 30 天）
- quarters: 将数字转换为季度的 Duration（假设一个季度为 90 天）
- quadrimesters: 将数字转换为四个月的 Duration（假设四个月为 120 天）
- years: 将数字转换为年的 Duration（假设一年为 365 天）
- future: 启动一个延迟 delayed

### Icon 扩展

示例:

```dart
// 创建一个原始图标
Icon originalIcon = Icon(Icons.star, size: 24, color: Colors.yellow);

// 使用 copyWith() 创建一个新图标，修改大小和颜色
Icon newIcon = originalIcon.copyWith(size: 32, color: Colors.red);

// 仅修改图标大小
Icon largerIcon = originalIcon.iconSize(48);

// 仅修改图标颜色
Icon blueIcon = originalIcon.iconColor(Colors.blue);
```

### List<Widget> 扩展

示例:

```dart
List<Widget> widgets = [Widget1(), Widget2(), Widget3()];
Widget column = widgets.toColumn(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  separator: Divider(),
);
```

扩展:

- toColumn(): 将 Widget 列表转换为 Column
- toColumnSpace(): 将 Widget 列表转换为带有间距的 Column
- toRow(): 将 Widget 列表转换为 Row
- toRowSpace(): 将 Widget 列表转换为带有间距的 Row
- toStack(): 将 Widget 列表转换为 Stack
- toListView(): 将 Widget 列表转换为 ListView
- toWrap(): 将 Widget 列表转换为 Wrap

### MediaQuery 扩展

示例:

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取屏幕宽度
    double screenWidth = context.sizes.width;

    // 获取屏幕高度
    double screenHeight = context.sizes.height;

    // 获取屏幕边距
    EdgeInsets padding = context.sizes.padding;

    // 获取设备像素比
    double pixelRatio = context.sizes.devicePixelRatio;

    // 使用可能为空的属性
    double? maybeWidth = context.sizes.maybeWidth;

    return Container(
      width: screenWidth * 0.8,
      height: screenHeight * 0.5,
      padding: padding,
      child: Text(
        'Device Pixel Ratio: $pixelRatio',
        style: TextStyle(fontSize: 16 * context.sizes.textScaler.scale(1.0)),
      ),
    );
  }
}
```

扩展:

- width: 屏幕宽度
- height: 屏幕高度
- padding: 屏幕边距
- viewInsets: 视图插入
- systemGestureInsets: 系统手势插入
- viewPadding: 视图边距
- devicePixelRatio: 设备像素比
- textScaler: 文本缩放器

### Navigator 扩展

示例:

```dart
context.navigator.pushMaterial(NewPage());
```

扩展:

- canPop: 检查是否可以弹出当前路由
- maybePop: 尝试弹出当前路由
- pop: 弹出当前路由
- popUntil: 弹出路由直到满足条件
- push: 推送新路由
- pushMaterial: 使用 MaterialPageRoute 推送新页面
- pushCupertino: 使用 CupertinoPageRoute 推送新页面
- popAndPushNamed: 弹出当前路由并推送命名路由
- pushAndRemoveUntil: 推送新路由并删除之前的路由直到满足条件
- pushNamed: 推送命名路由
- pushNamedAndRemoveUntil: 推送命名路由并删除之前的路由直到满足条件
- pushReplacement: 推送新路由并替换当前路由
- pushReplacementMaterial: 使用 MaterialPageRoute 推送新页面并替换当前路由
- pushReplacementCupertino: 使用 CupertinoPageRoute 推送新页面并替换当前路由
- pushReplacementNamed: 推送命名路由并替换当前路由
- removeRoute: 移除指定路由
- removeRouteBelow: 移除指定路由下方的路由
- replace: 替换指定路由
- replaceRouteBelow: 替换指定路由下方的路由

### 数字转 EdgeInsets 扩展

示例:

```dart
// 创建所有方向上偏移量为 16 的内边距
EdgeInsets padding1 = 16.paddingAll();

// 创建水平方向上偏移量为 20 的内边距
EdgeInsets padding2 = 20.paddingHorizontal();

// 创建垂直方向上偏移量为 10 的内边距
EdgeInsets padding3 = 10.paddingVertical();

// 创建只有顶部偏移量为 8 的内边距
EdgeInsets padding4 = 8.paddingTop();

// 创建只有左侧偏移量为 12 的内边距
EdgeInsets padding5 = 12.paddingLeft();

// 创建只有右侧偏移量为 15 的内边距
EdgeInsets padding6 = 15.paddingRight();

// 创建只有底部偏移量为 5 的内边距
EdgeInsets padding7 = 5.paddingBottom();
```

扩展:

- paddingAll: 创建所有方向上偏移量相等的内边距
- paddingHorizontal: 创建水平方向上对称的内边距
- paddingVertical: 创建垂直方向上对称的内边距
- paddingTop: 创建只有顶部内边距的 EdgeInsets
- paddingLeft: 创建只有左侧内边距的 EdgeInsets
- paddingRight: 创建只有右侧内边距的 EdgeInsets
- paddingBottom: 创建只有底部内边距的 EdgeInsets

### 平台查询

示例:

```dart
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (context.isAndroid) {
      return Text('This is an Android device');
    } else if (context.isIOS) {
      return Text('This is an iOS device');
    } else if (context.isMacOS) {
      return Text('This is a MacOS device');
    } else if (context.isWindows) {
      return Text('This is a Windows device');
    } else if (context.isLinux) {
      return Text('This is a Linux device');
    } else if (context.isFuchsia) {
      return Text('This is a Fuchsia device');
    } else {
      return Text('Unknown platform');
    }
  }
}
```

扩展:

- platform: 获取当前平台
- isAndroid: 检查当前系统是否为 Android
- isIOS: 检查当前系统是否为 iOS
- isMacOS: 检查当前系统是否为 MacOS
- isWindows: 检查当前系统是否为 Windows
- isFuchsia: 检查当前系统是否为 Fuchsia
- isLinux: 检查当前系统是否为 Linux

### Screen Util 工具扩展

示例:

```dart
// 适配宽度
double adaptiveWidth = 100.w;

// 适配高度
double adaptiveHeight = 50.h;

// 适配字体大小
double fontSize = 16.sp;

// 创建适配后的 EdgeInsets
EdgeInsets padding = EdgeInsets.all(10).r;

// 创建适配后的 BorderRadius
BorderRadius borderRadius = BorderRadius.circular(8).r;

// 创建适配后的 BoxConstraints
BoxConstraints constraints = BoxConstraints(maxWidth: 200, maxHeight: 100).hw;

// 创建垂直间距
SizedBox verticalSpace = 20.verticalSpace;

// 创建水平间距
SizedBox horizontalSpace = 15.horizontalSpace;
```

扩展:

主要扩展方法列表:

- ScreenUtilExtensions (on num)
  - w: 根据屏幕宽度适配尺寸
  - h: 根据屏幕高度适配尺寸
  - r: 适配圆角半径
  - dg: 适配对角线尺寸
  - dm: 适配直径尺寸
  - sp: 适配字体大小
  - spMin: 智能字体大小适配（不超过原始值）
  - spMax: 智能字体大小适配（取较大值）
  - sw: 屏幕宽度的倍数
  - sh: 屏幕高度的倍数
  - verticalSpace: 创建垂直方向的间距
  - horizontalSpace: 创建水平方向的间距
- EdgeInsetsExtension (on EdgeInsets)
  - r: 使用 r 适配所有边距
  - dm: 使用 dm 适配所有边距
  - dg: 使用 dg 适配所有边距
  - w: 使用 w 适配所有边距
  - h: 使用 h 适配所有边距
- BorderRadiusExtension (on BorderRadius)
  - r: 使用 r 适配所有角半径
  - w: 使用 w 适配所有角半径
  - h: 使用 h 适配所有角半径
- RadiusExtension (on Radius)
  - r: 使用 r 适配 Radius
  - dm: 使用 dm 适配 Radius
  - dg: 使用 dg 适配 Radius
  - w: 使用 w 适配 Radius
  - h: 使用 h 适配 Radius
- BoxConstraintsExtension (on BoxConstraints)
  - r: 使用 r 适配所有约束
  - hw: 使用 h 和 w 分别适配高度和宽度约束
  - w: 使用 w 适配所有约束
  - h: 使用 h 适配所有约束

### 数字转 SizedBox 扩展

示例:

```dart
// 创建一个宽度为 10 的水平间距
SizedBox horizontalGap = 10.horizontalSpace;

// 创建一个高度为 20 的垂直间距
SizedBox verticalGap = 20.verticalSpace;

// 在 Widget 树中使用
Column(
  children: [
    Text('First item'),
    10.verticalSpace,  // 添加 10 单位的垂直间距
    Text('Second item'),
    20.verticalSpace,  // 添加 20 单位的垂直间距
    Text('Third item'),
  ],
);

Row(
  children: [
    Text('Left'),
    15.horizontalSpace,  // 添加 15 单位的水平间距
    Text('Right'),
  ],
);
```

扩展:

- horizontalSpace: 创建具有指定宽度的 SizedBox
- verticalSpace: 创建具有指定高度的 SizedBox

### String 字符串扩展

示例:

```dart
// 大写转换
print('hello world'.capitalize()); // 输出: Hello World
print('hello world'.capitalizeFirst()); // 输出: Hello world

// 布尔值转换
print('true'.isBool()); // 输出: true
print('false'.toBool()); // 输出: false

// 数字转换
print('123'.isNum()); // 输出: true
print('3.14'.toDouble()); // 输出: 3.14
print('42'.toInt()); // 输出: 42

// 颜色转换
Color color = 'FF5733'.toColor;
MaterialColor materialColor = 'FF5733'.toMaterialColor;

// 字符串处理
print('Hello  World'.removeAllWhitespace()); // 输出: HelloWorld
print('abc123'.hasMatch(r'\d+')); // 输出: true
print('<p>Hello</p>'.clearHtml); // 输出: Hello
```

扩展:

- capitalize: 将每个单词的首字母大写
- capitalizeFirst: 将字符串的第一个字母大写
- isBool: 检查字符串是否可以转换为布尔值
- toBool: 将字符串转换为布尔值
- isNum: 检查字符串是否可以转换为数字
- toNum: 将字符串转换为数字
- isDouble: 检查字符串是否可以转换为双精度浮点数
- toDouble: 将字符串转换为双精度浮点数
- isInt: 检查字符串是否可以转换为整数
- toInt: 将字符串转换为整数
- toColor: 将十六进制颜色字符串转换为 Color 对象
- toMaterialColor: 将十六进制颜色字符串转换为 MaterialColor 对象
- removeAllWhitespace: 移除字符串中的所有空格
- hasMatch: 检查字符串是否匹配指定的正则表达式模式
- clearHtml: 移除字符串中的所有 HTML 标签

### Text 文本扩展

示例:

```dart
Text myText = Text('Hello, World!');

// 修改文本样式
myText = myText.textStyle(TextStyle(color: Colors.blue));

// 设置文本为粗体
myText = myText.bold();

// 设置文本为斜体
myText = myText.italic();

// 设置字体大小
myText = myText.fontSize(18);

// 设置字体系列
myText = myText.fontFamily('Roboto');

// 添加文本阴影
myText = myText.textShadow(color: Colors.grey, blurRadius: 2);

// 设置文本颜色
myText = myText.textColor(Colors.red);

// 设置文本对齐方式
myText = myText.textAlignment(TextAlign.center);

// 组合多个样式
myText = myText
    .bold()
    .fontSize(20)
    .textColor(Colors.green)
    .textAlignment(TextAlign.right);
```

扩展:

- copyWith: 创建一个新的 Text 对象，可选择性地修改其属性
- textStyle: 应用新的 TextStyle
- textScale: 设置文本缩放因子
- bold: 将文本设置为粗体
- italic: 将文本设置为斜体
- fontWeight: 设置文本的字体粗细
- fontSize: 设置文本的字体大小
- fontFamily: 设置文本的字体系列
- letterSpacing: 设置文本的字母间距
- wordSpacing: 设置文本的单词间距
- textShadow: 为文本添加阴影效果
- textElevation: 为文本添加立体效果
- textColor: 设置文本颜色
- textAlignment: 设置文本对齐方式
- textDirection: 设置文本方向
- textBaseline: 设置文本基线
- textWidthBasis: 设置文本宽度基准

### TextSpan 文本扩展

示例:

```dart
TextSpan myTextSpan = TextSpan(text: 'Hello, World!');

// 修改文本样式
myTextSpan = myTextSpan.textStyle(TextStyle(color: Colors.blue));

// 设置文本为粗体
myTextSpan = myTextSpan.bold();

// 设置文本为斜体
myTextSpan = myTextSpan.italic();

// 设置字体大小
myTextSpan = myTextSpan.fontSize(18);

// 设置字体系列
myTextSpan = myTextSpan.fontFamily('Roboto');

// 添加文本阴影
myTextSpan = myTextSpan.textShadow(color: Colors.grey, blurRadius: 2);

// 设置文本颜色
myTextSpan = myTextSpan.textColor(Colors.red);

// 组合多个样式
myTextSpan = myTextSpan
    .bold()
    .fontSize(20)
    .textColor(Colors.green);
```

扩展:

- copyWith: 创建一个新的 TextSpan 对象，可选择性地修改其属性
- textStyle: 应用新的 TextStyle
- bold: 将文本设置为粗体
- italic: 将文本设置为斜体
- fontWeight: 设置文本的字体粗细
- fontSize: 设置文本的字体大小
- fontFamily: 设置文本的字体系列
- letterSpacing: 设置文本的字母间距
- wordSpacing: 设置文本的单词间距
- textShadow: 为文本添加阴影效果
- textElevation: 为文本添加立体效果
- textColor: 设置文本颜色
- textBaseline: 设置文本基线

### theme 主题扩展

示例:

```dart
// 在 Widget 中使用
Widget build(BuildContext context) {
  // 获取按钮主题
  final buttonTheme = context.themes.button;

  // 获取文本主题
  final textTheme = context.themes.text;

  // 获取图标主题
  final iconTheme = context.themes.icon;

  // ... 使用其他主题数据
}
```

```dart
Widget build(BuildContext context) {
  if (context.isDarkMode) {
    // 应用当前处于深色模式
    return DarkThemeWidget();
  } else if (context.isLightMode) {
    // 应用当前处于浅色模式
    return LightThemeWidget();
  }
  // 其他情况
  return DefaultThemeWidget();
}
```

扩展:

- themes: 获取包含所有主题数据的 \_Themes 对象
- isDarkMode: 判断应用是否处于深色模式
- isLightMode: 判断应用是否处于浅色模式

### 开发工具

示例:

```sh
Object.log("日志内容")
```

- `log`: 打印日志

## 注意事项

这个使用说明概括了 ducafe_ui_core 类库的主要功能和使用方法。您可以根据需要进一步扩展或修改这个说明。如果您需要更详细的说明或有任何其他问题,请随时告诉我。
