part of '../ducafe_ui_core.dart';

/// TextSpan 文本扩展
extension TextSpanExtensions<T extends TextSpan> on T {
  T copyWith({
    TextStyle? style,
    GestureRecognizer? recognizer,
    String? semanticsLabel,
  }) =>
      TextSpan(
        text: text,
        children: children,
        style: style ?? this.style,
        recognizer: recognizer ?? this.recognizer,
        semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      ) as T;

  T textStyle(TextStyle style) => this.copyWith(
        style: this.style?.copyWith(
              background: style.background,
              backgroundColor: style.backgroundColor,
              color: style.color,
              debugLabel: style.debugLabel,
              decoration: style.decoration,
              decorationColor: style.decorationColor,
              decorationStyle: style.decorationStyle,
              decorationThickness: style.decorationThickness,
              fontFamily: style.fontFamily,
              fontFamilyFallback: style.fontFamilyFallback,
              fontFeatures: style.fontFeatures,
              fontSize: style.fontSize,
              fontStyle: style.fontStyle,
              fontWeight: style.fontWeight,
              foreground: style.foreground,
              height: style.height,
              inherit: style.inherit,
              letterSpacing: style.letterSpacing,
              locale: style.locale,
              shadows: style.shadows,
              textBaseline: style.textBaseline,
              wordSpacing: style.wordSpacing,
            ),
      );

  /// 将文本设置为粗体
  ///
  /// 返回: 应用了粗体样式的 TextSpan 对象
  T bold() => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: FontWeight.bold,
        ),
      );

  /// 将文本设置为斜体
  ///
  /// 返回: 应用了斜体样式的 TextSpan 对象
  T italic() => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontStyle: FontStyle.italic,
        ),
      );

  /// 设置文本的字体粗细
  ///
  /// 参数:
  /// - fontWeight: 字体粗细
  ///
  /// 返回: 应用了新字体粗细的 TextSpan 对象
  T fontWeight(FontWeight fontWeight) => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontWeight: fontWeight,
        ),
      );

  /// 设置文本的字体大小
  ///
  /// 参数:
  /// - size: 字体大小
  ///
  /// 返回: 应用了新字体大小的 TextSpan 对象
  T fontSize(double size) => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontSize: size,
        ),
      );

  /// 设置文本的字体系列
  ///
  /// 参数:
  /// - font: 字体系列名称
  ///
  /// 返回: 应用了新字体系列的 TextSpan 对象
  T fontFamily(String font) => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          fontFamily: font,
        ),
      );

  /// 设置文本的字母间距
  ///
  /// 参数:
  /// - space: 字母间距
  ///
  /// 返回: 应用了新字母间距的 TextSpan 对象
  T letterSpacing(double space) => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          letterSpacing: space,
        ),
      );

  /// 设置文本的单词间距
  ///
  /// 参数:
  /// - space: 单词间距
  ///
  /// 返回: 应用了新单词间距的 TextSpan 对象
  T wordSpacing(double space) => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          wordSpacing: space,
        ),
      );

  /// 为文本添加阴影效果
  ///
  /// 参数:
  /// - color: 阴影颜色，默认为半透明黑色
  /// - blurRadius: 阴影的模糊半径，默认为 0.0
  /// - offset: 阴影的偏移量，默认为 Offset.zero
  ///
  /// 返回: 应用了阴影效果的 TextSpan 对象
  T textShadow({
    Color color = const Color(0x33000000),
    double blurRadius = 0.0,
    Offset offset = Offset.zero,
  }) =>
      this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          shadows: [
            Shadow(
              color: color,
              blurRadius: blurRadius,
              offset: offset,
            ),
          ],
        ),
      );

  /// 计算立体效果的不透明度曲线
  ///
  /// 参数:
  /// - x: 输入值
  ///
  /// 返回: 计算后的不透明度值
  double _elevationOpacityCurve(double x) =>
      pow(x, 1 / 16) / sqrt(pow(x, 2) + 2) + 0.2;

  /// 为文本添加立体效果
  ///
  /// 参数:
  /// - elevation: 立体效果的高度
  /// - angle: 阴影的角度，默认为 0.0
  /// - color: 阴影颜色，默认为半透明黑色
  /// - opacityRatio: 不透明度比率，默认为 1.0
  ///
  /// 返回: 应用了立体效果的 TextSpan 对象
  T textElevation(
    double elevation, {
    double angle = 0.0,
    Color color = const Color(0x33000000),
    double opacityRatio = 1.0,
  }) {
    final double calculatedOpacity =
        _elevationOpacityCurve(elevation) * opacityRatio;

    final Shadow shadow = Shadow(
      color: color.withOpacity(calculatedOpacity),
      blurRadius: elevation,
      offset: Offset(sin(angle) * elevation, cos(angle) * elevation),
    );
    return this.copyWith(
      style: (style ?? const TextStyle()).copyWith(
        shadows: [
          shadow,
        ],
      ),
    );
  }

  /// 设置文本颜色
  ///
  /// 参数:
  /// - color: 文本颜色
  ///
  /// 返回: 应用了新颜色的 TextSpan 对象
  T textColor(Color color) => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          color: color,
        ),
      );

  /// 设置文本基线
  ///
  /// 参数:
  /// - textBaseline: 文本基线
  ///
  /// 返回: 应用了新文本基线的 TextSpan 对象
  T textBaseline(TextBaseline textBaseline) => this.copyWith(
        style: (style ?? const TextStyle()).copyWith(
          textBaseline: textBaseline,
        ),
      );
}
