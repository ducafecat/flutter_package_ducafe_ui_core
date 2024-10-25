part of '../ducafe_ui_core.dart';

/// 当前系统
extension PlatformExtensions on BuildContext {
  /// 获取当前平台
  ///
  /// 返回: 当前运行的目标平台 (TargetPlatform)
  TargetPlatform get platform => Theme.of(this).platform;

  /// 检查当前系统是否为 Android
  ///
  /// 返回: 如果当前平台是 Android，则返回 true；否则返回 false
  bool get isAndroid => platform == TargetPlatform.android;

  /// 检查当前系统是否为 iOS
  ///
  /// 返回: 如果当前平台是 iOS，则返回 true；否则返回 false
  bool get isIOS => platform == TargetPlatform.iOS;

  /// 检查当前系统是否为 MacOS
  ///
  /// 返回: 如果当前平台是 MacOS，则返回 true；否则返回 false
  bool get isMacOS => platform == TargetPlatform.macOS;

  /// 检查当前系统是否为 Windows
  ///
  /// 返回: 如果当前平台是 Windows，则返回 true；否则返回 false
  bool get isWindows => platform == TargetPlatform.windows;

  /// 检查当前系统是否为 Fuchsia
  ///
  /// 返回: 如果当前平台是 Fuchsia，则返回 true；否则返回 false
  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  /// 检查当前系统是否为 Linux
  ///
  /// 返回: 如果当前平台是 Linux，则返回 true；否则返回 false
  bool get isLinux => platform == TargetPlatform.linux;
}
