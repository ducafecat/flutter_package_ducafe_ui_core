part of '../ducafe_ui_core.dart';

/// 毛玻璃效果容器组件
/// 输入参数:
/// - height: 容器高度
/// - width: 容器宽度
/// - borderRadius: 边框圆角
/// - color: 背景颜色
/// - opacity: 透明度 (0.0 - 1.0)
/// - child: 子组件
/// - strengthX: 水平方向模糊强度
/// - strengthY: 垂直方向模糊强度
/// - border: 边框样式
/// - blendMode: 混合模式
/// - gradient: 渐变效果
/// - boxShadow: 阴影效果
/// - image: 背景图片
/// - imageOpacity: 背景图片透明度
/// - padding: 内边距
/// - margin: 外边距
/// 输出:
/// 返回一个带有毛玻璃效果的 Container 组件
class GlossyContainer extends StatelessWidget {
  /// 容器高度
  final double height;

  /// 容器宽度
  final double width;

  /// 容器边框圆角
  final BorderRadiusGeometry? borderRadius;

  /// 容器背景颜色
  final Color? color;

  /// 容器整体透明度 (0.0 - 1.0)
  final double? opacity;

  /// 容器内的子组件
  final Widget? child;

  /// 水平方向模糊强度
  final double? strengthX;

  /// 垂直方向模糊强度
  final double? strengthY;

  /// 容器边框样式
  final BoxBorder? border;

  /// 混合模式，用于应用滤镜效果
  final BlendMode? blendMode;

  /// 容器渐变效果
  final GlossyGradient? gradient;

  /// 容器阴影效果列表
  final List<BoxShadow>? boxShadow;

  /// 容器背景图片
  final DecorationImage? image;

  /// 背景图片透明度
  final double? imageOpacity;

  /// 容器内边距
  final EdgeInsets? padding;

  /// 容器外边距
  final EdgeInsets? margin;

  const GlossyContainer(
      {super.key,
      required this.height,
      required this.width,
      this.margin,
      this.padding,
      this.opacity,
      this.strengthX,
      this.strengthY,
      this.borderRadius,
      this.border,
      this.color,
      this.blendMode,
      this.gradient,
      this.child,
      this.image,
      this.imageOpacity,
      this.boxShadow});

  @override
  Widget build(BuildContext context) {
    late Gradient gradientToApply; // 根据类型应用的渐变效果

    // 检查是否为线性渐变
    if (gradient is GlossyLinearGradient) {
      final GlossyLinearGradient glg = gradient as GlossyLinearGradient;
      gradientToApply = glg.getLinearGradient(); // 获取线性渐变
    }
    // 检查是否为径向渐变
    if (gradient is GlossyRadialGradient) {
      final GlossyRadialGradient glg = gradient as GlossyRadialGradient;
      gradientToApply = glg.getRadialGradient(); // 获取径向渐变
    }

    return Container(
      decoration: BoxDecoration(
        boxShadow: boxShadow, // 应用阴影效果
        borderRadius: borderRadius, // 应用边框圆角
      ),
      child: ClipRRect(
        borderRadius:
            borderRadius == null ? BorderRadius.circular(0) : borderRadius!,
        child: Container(
          height: height,
          width: width,
          margin: margin,
          padding: padding,
          color: Colors.transparent,
          child: Stack(children: [
            // 应用背景模糊滤镜效果
            BackdropFilter(
              blendMode: blendMode != null ? blendMode! : BlendMode.srcOver,
              filter: ImageFilter.blur(
                sigmaX: strengthX == null ? 15 : strengthX!,
                sigmaY: strengthY == null ? 15 : strengthY!,
              ),
              child: Container(),
            ),
            Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                boxShadow: boxShadow,
                borderRadius: borderRadius,
                border: border ??
                    Border.all(
                      color: Colors.white54,
                      width: 0.5,
                    ),
                gradient: gradient == null
                    ? LinearGradient(
                        tileMode: TileMode.mirror,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                            color == null
                                ? const Color.fromARGB(255, 138, 137, 137)
                                    .withOpacity(opacity ?? 0.15)
                                : color!.withOpacity(opacity ?? 0.15),
                            color == null
                                ? const Color.fromARGB(255, 121, 120, 120)
                                    .withOpacity(opacity ?? 0.15)
                                : color!.withOpacity(opacity ?? 0.15),
                          ])
                    : gradientToApply,
              ),
            ),
            // 如果有背景图片则应用
            image != null
                ? Opacity(
                    opacity: imageOpacity == null ? 1 : imageOpacity!,
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(image: image),
                    ),
                  )
                : const SizedBox(),
            Container(
              child: child,
            )
          ]),
        ),
      ),
    );
  }
}

/// 毛玻璃渐变效果的抽象基类
/// 输入参数:
/// - colors: 渐变颜色列表
/// - opacity: 整体透明度
abstract class GlossyGradient {
  const GlossyGradient({required this.colors, required this.opacity});
  final List<Color> colors;
  final double opacity;
}

/// 线性渐变效果类
/// 输入参数:
/// - begin: 渐变开始位置
/// - end: 渐变结束位置
/// - colors: 渐变颜色列表
/// - tileMode: 渐变平铺模式
/// - opacity: 整体透明度
/// 输出:
/// 通过 getLinearGradient() 方法返回 LinearGradient 对象
class GlossyLinearGradient extends GlossyGradient {
  const GlossyLinearGradient({
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    required super.colors,
    this.tileMode = TileMode.clamp,
    required super.opacity,
  });

  final AlignmentGeometry begin;
  final AlignmentGeometry end;
  final TileMode tileMode;

  /// 获取线性渐变对象
  /// 输出: 返回配置好的 LinearGradient 对象
  LinearGradient getLinearGradient() {
    return LinearGradient(
        colors: colors.map((e) => e.withOpacity(opacity)).toList(),
        begin: begin,
        end: end,
        tileMode: tileMode);
  }
}

/// 径向渐变效果类
/// 输入参数:
/// - center: 渐变中心点
/// - radius: 渐变半径
/// - colors: 渐变颜色列表
/// - opacity: 整体透明度
/// - tileMode: 渐变平铺模式
/// - focal: 焦点位置
/// - focalRadius: 焦点半径
/// 输出:
/// 通过 getRadialGradient() 方法返回 RadialGradient 对象
class GlossyRadialGradient extends GlossyGradient {
  const GlossyRadialGradient({
    this.center = Alignment.center,
    this.radius = 0.5,
    required super.colors,
    required super.opacity,
    this.tileMode = TileMode.clamp,
    this.focal,
    this.focalRadius = 0.0,
  });

  final AlignmentGeometry center;
  final double radius;
  final TileMode tileMode;
  final AlignmentGeometry? focal;
  final double focalRadius;

  /// 获取径向渐变对象
  /// 输出: 返回配置好的 RadialGradient 对象
  RadialGradient getRadialGradient() {
    return RadialGradient(
      colors: colors.map((e) => e.withOpacity(opacity)).toList(),
      center: center,
      focal: focal,
      focalRadius: focalRadius,
      radius: radius,
      tileMode: tileMode,
    );
  }
}
