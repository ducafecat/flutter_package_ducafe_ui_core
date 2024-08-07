part of '../ducafe_ui_core.dart';

extension IconExtensions<T extends Icon> on T {
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

  T iconSize(double size) => this.copyWith(size: size);

  T iconColor(Color color) => this.copyWith(color: color);
}
