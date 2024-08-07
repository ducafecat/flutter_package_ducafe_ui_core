part of '../ducafe_ui_core.dart';

/// 数字转 SizedBox 扩展
extension SizedBoxExtensions on num {
  /// Creates sizedbox with width.
  SizedBox get horizontalSpace => SizedBox(width: toDouble());

  /// Creates sizedbox with height.
  SizedBox get verticalSpace => SizedBox(height: toDouble());
}
