part of '../ducafe_ui_core.dart';

/// 媒体查询各种尺寸信息, 返回 sizes 对象
extension MediaQueryExtensions on BuildContext {
  // ignore: library_private_types_in_public_api
  _Sizes get sizes => _Sizes(
        width: _width,
        height: _height,
        padding: _padding,
        viewInsets: _viewInsets,
        systemGestureInsets: _systemGestureInsets,
        viewPadding: _viewPadding,
        devicePixelRatio: _devicePixelRatio,
        textScaler: _textScaler,
        maybeDevicePixelRatio: _maybeDevicePixelRatio,
        maybeHeight: _maybeHeight,
        maybePadding: _maybePadding,
        maybeSystemGestureInsets: _maybeSystemGestureInsets,
        maybeTextScaler: _maybeTextScaler,
        maybeViewInsets: _maybeViewInsets,
        maybeViewPadding: _maybeViewPadding,
        maybeWidth: _maybeWidth,
      );

  /// 获取屏幕宽度
  /// 返回: 当前上下文的屏幕宽度
  double get _width => MediaQuery.sizeOf(this).width;

  /// 尝试获取屏幕宽度，可能为空
  /// 返回: 当前上下文的屏幕宽度，如果无法获取则返回 null
  double? get _maybeWidth => MediaQuery.maybeSizeOf(this)?.width;

  /// 获取屏幕高度
  /// 返回: 当前上下文的屏幕高度
  double get _height => MediaQuery.sizeOf(this).height;

  /// 尝试获取屏幕高度，可能为空
  /// 返回: 当前上下文的屏幕高度，如果无法获取则返回 null
  double? get _maybeHeight => MediaQuery.maybeSizeOf(this)?.height;

  /// 获取屏幕边距
  /// 返回: 当前上下文的屏幕边距
  EdgeInsets get _padding => MediaQuery.paddingOf(this);

  /// 尝试获取屏幕边距，可能为空
  /// 返回: 当前上下文的屏幕边距，如果无法获取则返回 null
  EdgeInsets? get _maybePadding => MediaQuery.maybePaddingOf(this);

  /// 获取视图插入
  /// 返回: 当前上下文的视图插入
  EdgeInsets get _viewInsets => MediaQuery.viewInsetsOf(this);

  /// 尝试获取视图插入，可能为空
  /// 返回: 当前上下文的视图插入，如果无法获取则返回 null
  EdgeInsets? get _maybeViewInsets => MediaQuery.maybeViewInsetsOf(this);

  /// 获取系统手势插入
  /// 返回: 当前上下文的系统手势插入
  EdgeInsets get _systemGestureInsets => MediaQuery.systemGestureInsetsOf(this);

  /// 尝试获取系统手势插入，可能为空
  /// 返回: 当前上下文的系统手势插入，如果无法获取则返回 null
  EdgeInsets? get _maybeSystemGestureInsets =>
      MediaQuery.maybeSystemGestureInsetsOf(this);

  /// 获取视图边距
  /// 返回: 当前上下文的视图边距
  EdgeInsets get _viewPadding => MediaQuery.viewPaddingOf(this);

  /// 尝试获取视图边距，可能为空
  /// 返回: 当前上下文的视图边距，如果无法获取则返回 null
  EdgeInsets? get _maybeViewPadding => MediaQuery.maybeViewPaddingOf(this);

  /// 获取设备像素比
  /// 返回: 当前上下文的设备像素比
  double get _devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  /// 尝试获取设备像素比，可能为空
  /// 返回: 当前上下文的设备像素比，如果无法获取则返回 null
  double? get _maybeDevicePixelRatio =>
      MediaQuery.maybeDevicePixelRatioOf(this);

  /// 获取文本缩放器
  /// 返回: 当前上下文的文本缩放器
  TextScaler get _textScaler => MediaQuery.textScalerOf(this);

  /// 尝试获取文本缩放器，可能为空
  /// 返回: 当前上下文的文本缩放器，如果无法获取则返回 null
  TextScaler? get _maybeTextScaler => MediaQuery.maybeTextScalerOf(this);
}

class _Sizes {
  const _Sizes({
    required this.width,
    required this.height,
    required this.padding,
    required this.viewInsets,
    required this.systemGestureInsets,
    required this.viewPadding,
    required this.devicePixelRatio,
    required this.textScaler,
    required this.maybeWidth,
    required this.maybeHeight,
    required this.maybePadding,
    required this.maybeViewInsets,
    required this.maybeSystemGestureInsets,
    required this.maybeViewPadding,
    required this.maybeDevicePixelRatio,
    required this.maybeTextScaler,
  });

  /// 屏幕宽度
  ///
  /// 返回: 当前设备的屏幕宽度
  ///
  /// 参考 [Size.width]
  final double width;

  /// 可能为空的屏幕宽度
  ///
  /// 返回: 当前设备的屏幕宽度，如果无法获取则为 null
  ///
  /// 参考 [Size.width]
  final double? maybeWidth;

  /// 屏幕高度
  ///
  /// 返回: 当前设备的屏幕高度
  ///
  /// 参考 [Size.height]
  final double height;

  /// 可能为空的屏幕高度
  ///
  /// 返回: 当前设备的屏幕高度，如果无法获取则为 null
  ///
  /// 参考 [Size.height]
  final double? maybeHeight;

  /// 屏幕边距
  ///
  /// 返回: 当前设备的屏幕边距
  ///
  /// 参考 [MediaQueryData.padding]
  final EdgeInsets padding;

  /// 可能为空的屏幕边距
  ///
  /// 返回: 当前设备的屏幕边距，如果无法获取则为 null
  ///
  /// 参考 [MediaQueryData.padding]
  final EdgeInsets? maybePadding;

  /// 视图插入
  ///
  /// 返回: 当前设备的视图插入
  ///
  /// 参考 [MediaQueryData.viewInsets]
  final EdgeInsets viewInsets;

  /// 可能为空的视图插入
  ///
  /// 返回: 当前设备的视图插入，如果无法获取则为 null
  ///
  /// 参考 [MediaQueryData.viewInsets]
  final EdgeInsets? maybeViewInsets;

  /// 系统手势插入
  ///
  /// 返回: 当前设备的系统手势插入
  ///
  /// 参考 [MediaQueryData.systemGestureInsets]
  final EdgeInsets systemGestureInsets;

  /// 可能为空的系统手势插入
  ///
  /// 返回: 当前设备的系统手势插入，如果无法获取则为 null
  ///
  /// 参考 [MediaQueryData.systemGestureInsets]
  final EdgeInsets? maybeSystemGestureInsets;

  /// 视图边距
  ///
  /// 返回: 当前设备的视图边距
  ///
  /// 参考 [MediaQueryData.viewPadding]
  final EdgeInsets viewPadding;

  /// 可能为空的视图边距
  ///
  /// 返回: 当前设备的视图边距，如果无法获取则为 null
  ///
  /// 参考 [MediaQueryData.viewPadding]
  final EdgeInsets? maybeViewPadding;

  /// 设备像素比
  ///
  /// 返回: 当前设备的像素比
  ///
  /// 参考 [MediaQueryData.devicePixelRatio]
  final double devicePixelRatio;

  /// 可能为空的设备像素比
  ///
  /// 返回: 当前设备的像素比，如果无法获取则为 null
  ///
  /// 参考 [MediaQueryData.devicePixelRatio]
  final double? maybeDevicePixelRatio;

  /// 文本缩放器
  ///
  /// 返回: 当前设备的文本缩放器
  ///
  /// 参考 [MediaQueryData.textScaler]
  final TextScaler textScaler;

  /// 可能为空的文本缩放器
  ///
  /// 返回: 当前设备的文本缩放器，如果无法获取则为 null
  ///
  /// 参考 [MediaQueryData.textScaler]
  final TextScaler? maybeTextScaler;
}
