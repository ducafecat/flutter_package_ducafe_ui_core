part of '../ducafe_ui_core.dart';

// Context Extensions
extension ContextExtensions on BuildContext {
  Size size() => MediaQuery.of(this).size;

  double width() => MediaQuery.of(this).size.width;

  double height() => MediaQuery.of(this).size.height;

  double pixelRatio() => MediaQuery.of(this).devicePixelRatio;

  double screenWidth() => ScreenUtil().screenWidth;

  double screenHeight() => ScreenUtil().screenHeight;

  double bottomBarHeight() => ScreenUtil().bottomBarHeight;

  double statusBarHeight() => ScreenUtil().statusBarHeight;

  double textScaleFactor() => ScreenUtil().textScaleFactor;

  double scaleWidth() => ScreenUtil().scaleWidth;

  double scaleHeight() => ScreenUtil().scaleHeight;

  Brightness platformBrightness() => MediaQuery.of(this).platformBrightness;

  double get navigationBarHeight => MediaQuery.of(this).padding.bottom;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  FormState? get formState => Form.of(this);

  ScaffoldState get scaffoldState => Scaffold.of(this);

  OverlayState? get overlayState => Overlay.of(this);

  Color get primaryColor => theme.primaryColor;

  Color get accentColor => theme.colorScheme.secondary;

  Color get scaffoldBackgroundColor => theme.scaffoldBackgroundColor;

  Color get cardColor => theme.cardColor;

  Color get dividerColor => theme.dividerColor;

  Color get iconColor => theme.iconTheme.color!;

  void requestFocus(FocusNode focus) {
    FocusScope.of(this).requestFocus(focus);
  }

  void unFocus(FocusNode focus) {
    focus.unfocus();
  }

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isLandscape => orientation == Orientation.landscape;

  bool get isPortrait => orientation == Orientation.portrait;

  bool get canPop => Navigator.canPop(this);

  void pop<T extends Object>([T? result]) => Navigator.pop(this, result);

  TargetPlatform get platform => Theme.of(this).platform;

  /// Return true if the platform is Android
  bool get isAndroid => platform == TargetPlatform.android;

  /// Return true if the platform is iOS
  bool get isIOS => platform == TargetPlatform.iOS;

  /// Return true if the platform is MacOS
  bool get isMacOS => platform == TargetPlatform.macOS;

  /// Return true if the platform is Windows
  bool get isWindows => platform == TargetPlatform.windows;

  /// Return true if the platform is Fuchsia
  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  /// Return true if the platform is Linux
  bool get isLinux => platform == TargetPlatform.linux;

  /// Open Drawer
  void openDrawer() => Scaffold.of(this).openDrawer();

  /// Hide Drawer
  void openEndDrawer() => Scaffold.of(this).openEndDrawer();

  /// Returns true if keyboard is visible
  bool get isKeyboardShowing => MediaQuery.of(this).viewInsets.bottom > 0;
}
