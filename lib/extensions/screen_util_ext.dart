part of '../ducafe_ui_core.dart';

/// Screen Util 工具扩展
extension ScreenUtilExtensions on num {
  /// 根据屏幕宽度适配尺寸
  ///
  /// 返回: 适配后的宽度值
  ///
  /// 参考 [ScreenUtil.setWidth]
  double get w => ScreenUtil().setWidth(this);

  /// 根据屏幕高度适配尺寸
  ///
  /// 返回: 适配后的高度值
  ///
  /// 参考 [ScreenUtil.setHeight]
  double get h => ScreenUtil().setHeight(this);

  /// 适配圆角半径
  ///
  /// 返回: 适配后的圆角半径值
  ///
  /// 参考 [ScreenUtil.radius]
  double get r => ScreenUtil().radius(this);

  /// 适配对角线尺寸
  ///
  /// 返回: 适配后的对角线尺寸值
  ///
  /// 参考 [ScreenUtil.diagonal]
  double get dg => ScreenUtil().diagonal(this);

  /// 适配直径尺寸
  ///
  /// 返回: 适配后的直径尺寸值
  ///
  /// 参考 [ScreenUtil.diameter]
  double get dm => ScreenUtil().diameter(this);

  /// 适配字体大小
  ///
  /// 返回: 适配后的字体大小值
  ///
  /// 参考 [ScreenUtil.setSp]
  double get sp => ScreenUtil().setSp(this);

  /// 智能尺寸适配：检查适配值是否大于原始，如果大于则使用原始值
  ///
  /// 返回: 适配后的尺寸值，但不会超过原始值
  ///
  /// 例如：对于 16.spMin，如果适配后的值 16.sp() 大于 16，则返回 16 而不是 16.sp()
  /// 这有助于在大屏幕上保持尺寸平衡
  double get spMin => min(toDouble(), sp);

  /// 已废弃，请使用 spMin 代替
  ///
  /// 返回: 同 spMin
  @Deprecated('use spMin instead')
  double get sm => min(toDouble(), sp);

  /// 智能尺寸适配：返回适配值和原始值中的较大者
  ///
  /// 返回: 适配后的尺寸值和原始值中的较大值
  double get spMax => max(toDouble(), sp);

  /// 屏幕宽度的倍数
  /// Multiple of screen width
  double get sw => ScreenUtil().screenWidth * this;

  /// 屏幕高度的倍数
  /// Multiple of screen height
  double get sh => ScreenUtil().screenHeight * this;

  /// 创建垂直方向的间距
  ///
  /// 返回: 一个高度为适配后的当前值的 SizedBox
  ///
  /// 参考 [ScreenUtil.setHeight]
  SizedBox get verticalSpace => ScreenUtil().setVerticalSpacing(this);

  /// 创建基于宽度的垂直方向间距
  ///
  /// 返回: 一个高度为适配后的当前值的 SizedBox，但基于屏幕宽度计算
  ///
  /// 参考 [ScreenUtil.setVerticalSpacingFromWidth]
  SizedBox get verticalSpaceFromWidth =>
      ScreenUtil().setVerticalSpacingFromWidth(this);

  /// 创建水平方向的间距
  ///
  /// 返回: 一个宽度为适配后的当前值的 SizedBox
  ///
  /// 参考 [ScreenUtil.setWidth]
  SizedBox get horizontalSpace => ScreenUtil().setHorizontalSpacing(this);

  /// 创建基于圆角半径的水平间距
  ///
  /// 返回: 一个宽度为适配后的圆角半径值的 SizedBox
  ///
  /// 参考 [ScreenUtil.radius]
  SizedBox get horizontalSpaceRadius =>
      ScreenUtil().setHorizontalSpacingRadius(this);

  /// 创建基于圆角半径的垂直间距
  ///
  /// 返回: 一个高度为适配后的圆角半径值的 SizedBox
  ///
  /// 参考 [ScreenUtil.radius]
  SizedBox get verticalSpacingRadius =>
      ScreenUtil().setVerticalSpacingRadius(this);

  /// 创建基于直径的水平间距
  ///
  /// 返回: 一个宽度为适配后的直径值的 SizedBox
  ///
  /// 参考 [ScreenUtil.diameter]
  SizedBox get horizontalSpaceDiameter =>
      ScreenUtil().setHorizontalSpacingDiameter(this);

  /// 创建基于直径的垂直间距
  ///
  /// 返回: 一个高度为适配后的直径值的 SizedBox
  ///
  /// 参考 [ScreenUtil.diameter]
  SizedBox get verticalSpacingDiameter =>
      ScreenUtil().setVerticalSpacingDiameter(this);

  /// 创建基于对角线的水平间距
  ///
  /// 返回: 一个宽度为适配后的对角线值的 SizedBox
  ///
  /// 参考 [ScreenUtil.diagonal]
  SizedBox get horizontalSpaceDiagonal =>
      ScreenUtil().setHorizontalSpacingDiagonal(this);

  /// 创建基于对角线的垂直间距
  ///
  /// 返回: 一个高度为适配后的对角线值的 SizedBox
  ///
  /// 参考 [ScreenUtil.diagonal]
  SizedBox get verticalSpacingDiagonal =>
      ScreenUtil().setVerticalSpacingDiagonal(this);
}

extension EdgeInsetsExtension on EdgeInsets {
  /// 使用 r [SizeExtensions] 创建适配后的 EdgeInsets
  ///
  /// 返回: 一个新的 EdgeInsets 对象，其所有边距都使用 r 进行了适配
  EdgeInsets get r => copyWith(
        top: top.r,
        bottom: bottom.r,
        right: right.r,
        left: left.r,
      );

  /// 使用 dm [SizeExtensions] 创建适配后的 EdgeInsets
  ///
  /// 返回: 一个新的 EdgeInsets 对象，其所有边距都使用 dm (直径) 进行了适配
  EdgeInsets get dm => copyWith(
        top: top.dm,
        bottom: bottom.dm,
        right: right.dm,
        left: left.dm,
      );

  /// 使用 dg [SizeExtensions] 创建适配后的 EdgeInsets
  ///
  /// 返回: 一个新的 EdgeInsets 对象，其所有边距都使用 dg (对角线) 进行了适配
  EdgeInsets get dg => copyWith(
        top: top.dg,
        bottom: bottom.dg,
        right: right.dg,
        left: left.dg,
      );

  /// 使用 w [SizeExtensions] 创建适配后的 EdgeInsets
  ///
  /// 返回: 一个新的 EdgeInsets 对象，其所有边距都使用 w (宽度) 进行了适配
  EdgeInsets get w => copyWith(
        top: top.w,
        bottom: bottom.w,
        right: right.w,
        left: left.w,
      );

  /// 使用 h [SizeExtensions] 创建适配后的 EdgeInsets
  ///
  /// 返回: 一个新的 EdgeInsets 对象，其所有边距都使用 h (高度) 进行了适配
  EdgeInsets get h => copyWith(
        top: top.h,
        bottom: bottom.h,
        right: right.h,
        left: left.h,
      );
}

extension BorderRadiusExtension on BorderRadius {
  /// 使用 r [SizeExtensions] 创建适配后的 BorderRadius
  ///
  /// 返回: 一个新的 BorderRadius 对象，其所有角半径都使用 r 进行了适配
  ///
  /// 参考 [SizeExtensions.r]
  BorderRadius get r => copyWith(
        bottomLeft: bottomLeft.r,
        bottomRight: bottomRight.r,
        topLeft: topLeft.r,
        topRight: topRight.r,
      );

  /// 使用 w [SizeExtensions] 创建适配后的 BorderRadius
  ///
  /// 返回: 一个新的 BorderRadius 对象，其所有角半径都使用 w (宽度) 进行了适配
  ///
  /// 参考 [SizeExtensions.w]
  BorderRadius get w => copyWith(
        bottomLeft: bottomLeft.w,
        bottomRight: bottomRight.w,
        topLeft: topLeft.w,
        topRight: topRight.w,
      );

  /// 使用 h [SizeExtensions] 创建适配后的 BorderRadius
  ///
  /// 返回: 一个新的 BorderRadius 对象，其所有角半径都使用 h (高度) 进行了适配
  ///
  /// 参考 [SizeExtensions.h]
  BorderRadius get h => copyWith(
        bottomLeft: bottomLeft.h,
        bottomRight: bottomRight.h,
        topLeft: topLeft.h,
        topRight: topRight.h,
      );
}

extension RadiusExtension on Radius {
  /// 使用 r [SizeExtensions] 创建适配后的 Radius
  ///
  /// 返回: 一个新的 Radius 对象，其 x 和 y 值都使用 r 进行了适配
  ///
  /// 参考 [SizeExtensions.r]
  Radius get r => Radius.elliptical(x.r, y.r);

  /// 使用 dm [SizeExtensions] 创建适配后的 Radius
  ///
  /// 返回: 一个新的 Radius 对象，其 x 和 y 值都使用 dm (直径) 进行了适配
  ///
  /// 参考 [SizeExtensions.dm]
  Radius get dm => Radius.elliptical(x.dm, y.dm);

  /// 使用 dg [SizeExtensions] 创建适配后的 Radius
  ///
  /// 返回: 一个新的 Radius 对象，其 x 和 y 值都使用 dg (对角线) 进行了适配
  ///
  /// 参考 [SizeExtensions.dg]
  Radius get dg => Radius.elliptical(x.dg, y.dg);

  /// 使用 w [SizeExtensions] 创建适配后的 Radius
  ///
  /// 返回: 一个新的 Radius 对象，其 x 和 y 值都使用 w (宽度) 进行了适配
  ///
  /// 参考 [SizeExtensions.w]
  Radius get w => Radius.elliptical(x.w, y.w);

  /// 使用 h [SizeExtensions] 创建适配后的 Radius
  ///
  /// 返回: 一个新的 Radius 对象，其 x 和 y 值都使用 h (高度) 进行了适配
  ///
  /// 参考 [SizeExtensions.h]
  Radius get h => Radius.elliptical(x.h, y.h);
}

extension BoxConstraintsExtension on BoxConstraints {
  /// 使用 r [SizeExtensions] 创建适配后的 BoxConstraints
  ///
  /// 返回: 一个新的 BoxConstraints 对象，其所有约束值都使用 r 进行了适配
  ///
  /// 参考 [SizeExtensions.r]
  BoxConstraints get r => copyWith(
        maxHeight: maxHeight.r,
        maxWidth: maxWidth.r,
        minHeight: minHeight.r,
        minWidth: minWidth.r,
      );

  /// 使用 h 和 w [SizeExtensions] 创建适配后的 BoxConstraints
  ///
  /// 返回: 一个新的 BoxConstraints 对象，高度约束使用 h 适配，宽度约束使用 w 适配
  ///
  /// 参考 [SizeExtensions.h] 和 [SizeExtensions.w]
  BoxConstraints get hw => copyWith(
        maxHeight: maxHeight.h,
        maxWidth: maxWidth.w,
        minHeight: minHeight.h,
        minWidth: minWidth.w,
      );

  /// 使用 w [SizeExtensions] 创建适配后的 BoxConstraints
  ///
  /// 返回: 一个新的 BoxConstraints 对象，其所有约束值都使用 w (宽度) 进行了适配
  ///
  /// 参考 [SizeExtensions.w]
  BoxConstraints get w => copyWith(
        maxHeight: maxHeight.w,
        maxWidth: maxWidth.w,
        minHeight: minHeight.w,
        minWidth: minWidth.w,
      );

  /// 使用 h [SizeExtensions] 创建适配后的 BoxConstraints
  ///
  /// 返回: 一个新的 BoxConstraints 对象，其所有约束值都使用 h (高度) 进行了适配
  ///
  /// 参考 [SizeExtensions.h]
  BoxConstraints get h => copyWith(
        maxHeight: maxHeight.h,
        maxWidth: maxWidth.h,
        minHeight: minHeight.h,
        minWidth: minWidth.h,
      );
}
