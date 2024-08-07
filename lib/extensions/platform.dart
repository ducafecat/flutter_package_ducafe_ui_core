part of '../ducafe_ui_core.dart';

/// 当前系统
extension PlatformExtensions on BuildContext {
  TargetPlatform get platform => Theme.of(this).platform;

  /// 当前系统是否 Android
  bool get isAndroid => platform == TargetPlatform.android;

  /// 当前系统是否 iOS
  bool get isIOS => platform == TargetPlatform.iOS;

  /// 当前系统是否 MacOS
  bool get isMacOS => platform == TargetPlatform.macOS;

  /// 当前系统是否 Windows
  bool get isWindows => platform == TargetPlatform.windows;

  /// 当前系统是否 Fuchsia
  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  /// 当前系统是否 Linux
  bool get isLinux => platform == TargetPlatform.linux;
}
