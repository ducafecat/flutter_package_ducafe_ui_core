part of '../ducafe_ui_core.dart';

// Context Extensions
extension ContextExtensions on BuildContext {
  /////////////////////////////////////////////////////////////////////
  // ScreenUtil 屏幕尺寸信息
  /////////////////////////////////////////////////////////////////////

  double get screenWidth => ScreenUtil().screenWidth;

  double get screenHeight => ScreenUtil().screenHeight;

  double get bottomBarHeight => ScreenUtil().bottomBarHeight;

  double get statusBarHeight => ScreenUtil().statusBarHeight;

  double get textScaleFactor => ScreenUtil().textScaleFactor;

  double get scaleWidth => ScreenUtil().scaleWidth;

  double get scaleHeight => ScreenUtil().scaleHeight;

  /////////////////////////////////////////////////////////////////////
  // 屏幕方向
  /////////////////////////////////////////////////////////////////////

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isLandscape => orientation == Orientation.landscape;

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

  Brightness platformBrightness() => MediaQuery.of(this).platformBrightness;

  double get navigationBarHeight => MediaQuery.of(this).padding.bottom;

  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  FormState? get formState => Form.of(this);

  ScaffoldState get scaffoldState => Scaffold.of(this);

  OverlayState? get overlayState => Overlay.of(this);

  void requestFocus(FocusNode focus) {
    FocusScope.of(this).requestFocus(focus);
  }

  void unFocus(FocusNode focus) {
    focus.unfocus();
  }

  bool get canPop => Navigator.canPop(this);

  void pop<T extends Object>([T? result]) => Navigator.pop(this, result);

  /// Open Drawer
  void openDrawer() => Scaffold.of(this).openDrawer();

  /// Hide Drawer
  void openEndDrawer() => Scaffold.of(this).openEndDrawer();

  /// Returns true if keyboard is visible
  bool get isKeyboardShowing => MediaQuery.of(this).viewInsets.bottom > 0;
}
