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

  double get _width => MediaQuery.sizeOf(this).width;
  double? get _maybeWidth => MediaQuery.maybeSizeOf(this)?.width;
  double get _height => MediaQuery.sizeOf(this).height;
  double? get _maybeHeight => MediaQuery.maybeSizeOf(this)?.height;
  EdgeInsets get _padding => MediaQuery.paddingOf(this);
  EdgeInsets? get _maybePadding => MediaQuery.maybePaddingOf(this);
  EdgeInsets get _viewInsets => MediaQuery.viewInsetsOf(this);
  EdgeInsets? get _maybeViewInsets => MediaQuery.maybeViewInsetsOf(this);
  EdgeInsets get _systemGestureInsets => MediaQuery.systemGestureInsetsOf(this);
  EdgeInsets? get _maybeSystemGestureInsets =>
      MediaQuery.maybeSystemGestureInsetsOf(this);
  EdgeInsets get _viewPadding => MediaQuery.viewPaddingOf(this);
  EdgeInsets? get _maybeViewPadding => MediaQuery.maybeViewPaddingOf(this);
  double get _devicePixelRatio => MediaQuery.devicePixelRatioOf(this);
  double? get _maybeDevicePixelRatio =>
      MediaQuery.maybeDevicePixelRatioOf(this);
  TextScaler get _textScaler => MediaQuery.textScalerOf(this);
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

  /// See [Size.width].
  final double width;

  /// See [Size.width].
  final double? maybeWidth;

  /// See [Size.height].
  final double height;

  /// See [Size.height].
  final double? maybeHeight;

  /// See [MediaQueryData.padding].
  final EdgeInsets padding;

  /// See [MediaQueryData.padding].
  final EdgeInsets? maybePadding;

  /// See [MediaQueryData.viewInsets].
  final EdgeInsets viewInsets;

  /// See [MediaQueryData.viewInsets].
  final EdgeInsets? maybeViewInsets;

  /// See [MediaQueryData.systemGestureInsets].
  final EdgeInsets systemGestureInsets;

  /// See [MediaQueryData.systemGestureInsets].
  final EdgeInsets? maybeSystemGestureInsets;

  /// See [MediaQueryData.viewPadding].
  final EdgeInsets viewPadding;

  /// See [MediaQueryData.viewPadding].
  final EdgeInsets? maybeViewPadding;

  /// See [MediaQueryData.devicePixelRatio].
  final double devicePixelRatio;

  /// See [MediaQueryData.devicePixelRatio].
  final double? maybeDevicePixelRatio;

  /// See [MediaQueryData.textScaler].
  final TextScaler textScaler;

  /// See [MediaQueryData.textScaler].
  final TextScaler? maybeTextScaler;
}
