part of '../ducafe_ui_core.dart';

class UI {
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

  static Widget widget({Widget? child}) =>
      child ??
      LimitedBox(
        maxWidth: 0.0,
        maxHeight: 0.0,
        child: ConstrainedBox(
          constraints: const BoxConstraints.expand(),
        ),
      );

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
              // textScaleFactor: textScaleFactor,
              textScaler: textScaleFactor == null
                  ? null
                  : TextScaler.linear(textScaleFactor),
              textWidthBasis: textWidthBasis,
            );

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
