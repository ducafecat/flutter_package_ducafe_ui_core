part of '../ducafe_ui_core.dart';

class UI {
  /// 创建一个自定义的构建器 Widget
  ///
  /// 参数:
  /// - builder: 一个函数,接收 BuildContext 和 child Widget,返回一个新的 Widget
  /// - child: 要传递给 builder 函数的子 Widget
  ///
  /// 返回: 一个新的 Builder Widget,其中包含了自定义的构建逻辑
  ///
  /// 这个方法允许在构建过程中访问 BuildContext,并对传入的 child 进行自定义修改
  static Widget builder({
    required Widget Function(BuildContext context, Widget child) builder,
    required Widget child,
  }) =>
      Builder(
        builder: (context) => builder(
          context,
          child,
        ),
      );

  /// 创建一个空组件或包装现有组件
  ///
  /// 参数:
  /// - child: 可选的子 Widget。如果提供,则直接返回该 Widget
  ///
  /// 返回:
  /// - 如果提供了 child,则返回该 child Widget
  /// - 如果没有提供 child,则返回一个最小尺寸为 0 的 LimitedBox,内部包含一个 ConstrainedBox
  ///
  /// 这个方法用于创建一个占位组件,或者在不需要额外布局时直接返回子组件
  static Widget widget({Widget? child}) =>
      child ??
      LimitedBox(
        maxWidth: 0.0,
        maxHeight: 0.0,
        child: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
        ),
      );

  /// 创建文本 Widget
  ///
  /// 参数:
  /// - data: 要显示的文本内容
  /// - style: 文本样式
  /// - strutStyle: 文本的支撑样式
  /// - textAlign: 文本对齐方式
  /// - textDirection: 文本方向
  /// - locale: 本地化设置
  /// - softWrap: 是否自动换行
  /// - overflow: 文本溢出处理方式
  /// - textScaleFactor: 文本缩放因子
  /// - maxLines: 最大行数
  /// - semanticsLabel: 语义化标签
  /// - textWidthBasis: 文本宽度计算基准
  /// - animate: 是否使用动画效果,默认为 false
  ///
  /// 返回:
  /// - 如果 animate 为 true,返回 _AnimatedTextContainer
  /// - 如果 animate 为 false,返回普通的 Text Widget
  static Text text(
    String data, {
    TextStyle? style,
    StrutStyle? strutStyle,
    TextAlign? textAlign,
    TextDirection? textDirection,
    Locale? locale,
    bool? softWrap,
    TextOverflow? overflow,
    double? textScaleFactor,
    int? maxLines,
    String? semanticsLabel,
    TextWidthBasis? textWidthBasis,
    bool animate = false,
  }) =>
      animate
          ? _AnimatedTextContainer(
              data,
              locale: locale,
              maxLines: maxLines,
              overflow: overflow,
              semanticsLabel: semanticsLabel,
              softWrap: softWrap,
              strutStyle: strutStyle,
              style: style,
              textAlign: textAlign,
              textDirection: textDirection,
              textScaleFactor: textScaleFactor,
              textWidthBasis: textWidthBasis,
            )
          : Text(
              data,
              locale: locale,
              maxLines: maxLines,
              overflow: overflow,
              semanticsLabel: semanticsLabel,
              softWrap: softWrap,
              strutStyle: strutStyle,
              style: style,
              textAlign: textAlign,
              textDirection: textDirection,
              textScaler: textScaleFactor == null
                  ? null
                  : TextScaler.linear(textScaleFactor),
              textWidthBasis: textWidthBasis,
            );

  /// 创建图标 Widget
  ///
  /// 参数:
  /// - icon: 要显示的图标数据
  /// - key: Widget 的键
  /// - size: 图标大小
  /// - color: 图标颜色
  /// - semanticLabel: 语义化标签
  /// - textDirection: 文本方向
  /// - animate: 是否使用动画效果,默认为 false
  ///
  /// 返回:
  /// - 如果 animate 为 true,返回 _AnimatedIconContainer
  /// - 如果 animate 为 false,返回普通的 Icon Widget
  static Icon icon(
    IconData icon, {
    Key? key,
    double? size,
    Color? color,
    String? semanticLabel,
    TextDirection? textDirection,
    bool animate = false,
  }) =>
      animate
          ? _AnimatedIconContainer(
              icon,
              color: color,
              size: size,
              semanticLabel: semanticLabel,
              textDirection: textDirection,
            )
          : Icon(
              icon,
              color: color,
              size: size,
              semanticLabel: semanticLabel,
              textDirection: textDirection,
            );
}
