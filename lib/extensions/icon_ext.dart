part of '../ducafe_ui_core.dart';

/// Icon 扩展，提供复制和修改 Icon 属性的方法
extension IconExtensions<T extends Icon> on T {
  /// 创建一个新的 Icon 实例，可选择性地修改部分或全部属性
  ///
  /// 参数:
  /// - [size]: 图标的大小，单位为逻辑像素。如果为 null，则保持原始大小。
  /// - [color]: 图标的颜色。如果为 null，则保持原始颜色。
  /// - [semanticLabel]: 图标的语义标签，用于辅助功能。如果为 null，则保持原始标签。
  /// - [textDirection]: 图标的文本方向。如果为 null，则保持原始方向。
  ///
  /// 返回:
  /// 返回一个新的 Icon 实例，类型为 T。如果原始图标是 _AnimatedIconContainer 类型，
  /// 则返回新的 _AnimatedIconContainer 实例；否则返回新的 Icon 实例。
  T copyWith({
    double? size,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
  }) =>
      (this is _AnimatedIconContainer
          ? _AnimatedIconContainer(
              icon,
              color: color ?? this.color,
              size: size ?? this.size,
              semanticLabel: semanticLabel ?? this.semanticLabel,
              textDirection: textDirection ?? this.textDirection,
            )
          : Icon(
              icon,
              color: color ?? this.color,
              size: size ?? this.size,
              semanticLabel: semanticLabel ?? this.semanticLabel,
              textDirection: textDirection ?? this.textDirection,
            )) as T;

  /// 创建一个新的 Icon 实例，仅修改其大小
  ///
  /// 参数:
  /// - [size]: 新的图标大小，单位为逻辑像素。这个参数是必需的，不能为 null。
  ///
  /// 返回:
  /// 返回一个新的 Icon 实例，类型为 T，其大小被设置为指定的值，其他属性保持不变。
  T iconSize(double size) => this.copyWith(size: size);

  /// 创建一个新的 Icon 实例，仅修改其颜色
  ///
  /// 参数:
  /// - [color]: 新的图标颜色。这个参数是必需的，不能为 null。
  ///
  /// 返回:
  /// 返回一个新的 Icon 实例，类型为 T，其颜色被设置为指定的值，其他属性保持不变。
  T iconColor(Color color) => this.copyWith(color: color);
}
