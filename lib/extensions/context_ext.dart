part of '../ducafe_ui_core.dart';

/// 上下文扩展
extension ContextExtensions on BuildContext {
  /////////////////////////////////////////////////////////////////////
  // ScreenUtil 屏幕尺寸信息
  /////////////////////////////////////////////////////////////////////

  /// 获取屏幕宽度
  double get screenWidth => ScreenUtil().screenWidth;

  /// 获取屏幕高度
  double get screenHeight => ScreenUtil().screenHeight;

  /// 获取底部导航栏高度
  double get bottomBarHeight => ScreenUtil().bottomBarHeight;

  /// 获取状态栏高度
  double get statusBarHeight => ScreenUtil().statusBarHeight;

  /// 获取文本缩放因子
  double get textScaleFactor => ScreenUtil().textScaleFactor;

  /// 获取宽度的缩放因子
  double get scaleWidth => ScreenUtil().scaleWidth;

  /// 获取高度的缩放因子
  double get scaleHeight => ScreenUtil().scaleHeight;

  /////////////////////////////////////////////////////////////////////
  // 屏幕方向
  /////////////////////////////////////////////////////////////////////

  /// 获取当前屏幕方向
  Orientation get orientation => MediaQuery.of(this).orientation;

  /// 判断是否为横屏模式
  bool get isLandscape => orientation == Orientation.landscape;

  /// 判断是否为竖屏模式
  bool get isPortrait => orientation == Orientation.portrait;

  /////////////////////////////////////////////////////////////////////
  // theme
  /////////////////////////////////////////////////////////////////////

  // ThemeData get theme => Theme.of(this);

  // TextTheme get textTheme => Theme.of(this).textTheme;

  // ColorScheme get colorScheme => Theme.of(this).colorScheme;

  // Color get primaryColor => theme.primaryColor;

  // Color get accentColor => theme.colorScheme.secondary;

  // Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;

  // Color get cardColor => theme.cardColor;

  // Color get dividerColor => theme.dividerColor;

  // Color get iconColor => theme.iconTheme.color!;

  /////////////////////////////////////////////////////////////////////
  // 其它
  /////////////////////////////////////////////////////////////////////

  /// 获取平台亮度设置
  Brightness platformBrightness() => MediaQuery.of(this).platformBrightness;

  /// 获取底部导航栏高度
  double get navigationBarHeight => MediaQuery.of(this).padding.bottom;

  /// 获取默认文本样式
  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  /// 获取当前Form的状态
  FormState? get formState => Form.of(this);

  /// 获取当前Scaffold的状态
  ScaffoldState get scaffoldState => Scaffold.of(this);

  /// 获取当前Overlay的状态
  OverlayState? get overlayState => Overlay.of(this);

  /// 请求焦点
  void requestFocus(FocusNode focus) {
    FocusScope.of(this).requestFocus(focus);
  }

  /// 取消焦点
  void unFocus(FocusNode focus) {
    focus.unfocus();
  }

  /// 检查是否可以弹出当前路由
  bool get canPop => Navigator.canPop(this);

  /// 弹出当前路由
  void pop<T extends Object>([T? result]) => Navigator.pop(this, result);

  /// 打开抽屉
  void openDrawer() => Scaffold.of(this).openDrawer();

  /// 打开末端抽屉
  void openEndDrawer() => Scaffold.of(this).openEndDrawer();

  /// 检查键盘是否可见
  bool get isKeyboardShowing => MediaQuery.of(this).viewInsets.bottom > 0;
}
