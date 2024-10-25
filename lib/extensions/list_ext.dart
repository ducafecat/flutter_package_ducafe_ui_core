part of '../ducafe_ui_core.dart';

extension ListExtensions<E> on List<Widget> {
  /// 将 Widget 列表转换为 Column
  ///
  /// 参数:
  /// - [key]: 用于 Column 的可选键
  /// - [mainAxisAlignment]: 主轴对齐方式，默认为 MainAxisAlignment.start
  /// - [mainAxisSize]: 主轴尺寸，默认为 MainAxisSize.max
  /// - [crossAxisAlignment]: 交叉轴对齐方式，默认为 CrossAxisAlignment.center
  /// - [textDirection]: 文本方向，可选
  /// - [verticalDirection]: 垂直方向，默认为 VerticalDirection.down
  /// - [textBaseline]: 文本基线，可选
  /// - [separator]: 可选的分隔 Widget
  ///
  /// 返回: 包含列表中所有 Widget 的 Column
  Widget toColumn({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Widget? separator,
  }) =>
      Column(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: separator != null && isNotEmpty
            ? (expand((child) => [child, separator]).toList()..removeLast())
            : this,
      );

  /// 将 Widget 列表转换为带有间距的 Column
  ///
  /// 参数:
  /// - [key]: 用于 Column 的可选键
  /// - [mainAxisAlignment]: 主轴对齐方式，默认为 MainAxisAlignment.start
  /// - [mainAxisSize]: 主轴尺寸，默认为 MainAxisSize.max
  /// - [crossAxisAlignment]: 交叉轴对齐方式，默认为 CrossAxisAlignment.center
  /// - [textDirection]: 文本方向，可选
  /// - [verticalDirection]: 垂直方向，默认为 VerticalDirection.down
  /// - [textBaseline]: 文本基线，可选
  /// - [space]: Widget 之间的间距，默认为 10.0
  ///
  /// 返回: 包含列表中所有 Widget 的 Column，Widget 之间有指定的间距
  Widget toColumnSpace({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    double space = 10.0,
  }) =>
      Column(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: isNotEmpty
            ? (expand((child) => [child, SizedBox(height: space)]).toList()
              ..removeLast())
            : this,
      );

  /// 将 Widget 列表转换为 Row
  ///
  /// 参数:
  /// - [key]: 用于 Row 的可选键
  /// - [mainAxisAlignment]: 主轴对齐方式，默认为 MainAxisAlignment.start
  /// - [mainAxisSize]: 主轴尺寸，默认为 MainAxisSize.max
  /// - [crossAxisAlignment]: 交叉轴对齐方式，默认为 CrossAxisAlignment.center
  /// - [textDirection]: 文本方向，可选
  /// - [verticalDirection]: 垂直方向，默认为 VerticalDirection.down
  /// - [textBaseline]: 文本基线，可选
  /// - [separator]: 可选的分隔 Widget
  ///
  /// 返回: 包含列表中所有 Widget 的 Row
  Widget toRow({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Widget? separator,
  }) =>
      Row(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: separator != null && isNotEmpty
            ? (expand((child) => [child, separator]).toList()..removeLast())
            : this,
      );

  /// 将 Widget 列表转换为带有间距的 Row
  ///
  /// 参数:
  /// - [key]: 用于 Row 的可选键
  /// - [mainAxisAlignment]: 主轴对齐方式，默认为 MainAxisAlignment.start
  /// - [mainAxisSize]: 主轴尺寸，默认为 MainAxisSize.max
  /// - [crossAxisAlignment]: 交叉轴对齐方式，默认为 CrossAxisAlignment.center
  /// - [textDirection]: 文本方向，可选
  /// - [verticalDirection]: 垂直方向，默认为 VerticalDirection.down
  /// - [textBaseline]: 文本基线，可选
  /// - [space]: Widget 之间的间距，默认为 10.0
  ///
  /// 返回: 包含列表中所有 Widget 的 Row，Widget 之间有指定的间距
  Widget toRowSpace({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    double space = 10.0,
  }) =>
      Row(
        key: key,
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        textBaseline: textBaseline,
        children: isNotEmpty
            ? (expand((child) => [child, SizedBox(width: space)]).toList()
              ..removeLast())
            : this,
      );

  /// 将 Widget 列表转换为 Stack
  ///
  /// 参数:
  /// - [key]: 用于 Stack 的可选键
  /// - [alignment]: 子 Widget 的对齐方式，默认为 AlignmentDirectional.topStart
  /// - [textDirection]: 文本方向，可选
  /// - [fit]: 子 Widget 如何适应 Stack 的大小，默认为 StackFit.loose
  /// - [clipBehavior]: 超出 Stack 边界的子 Widget 的裁剪行为，默认为 Clip.hardEdge
  /// - [children]: 额外的子 Widget 列表，默认为空
  ///
  /// 返回: 包含列表中所有 Widget 的 Stack
  Widget toStack({
    Key? key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
    List<Widget> children = const <Widget>[],
  }) =>
      Stack(
        key: key,
        alignment: alignment,
        textDirection: textDirection,
        fit: fit,
        clipBehavior: clipBehavior,
        children: this,
      );

  /// 将 Widget 列表转换为 ListView
  ///
  /// 参数:
  /// - [key]: 用于 ListView 的可选键
  /// - [scrollDirection]: 滚动方向，默认为 Axis.vertical
  ///
  /// 返回: 包含列表中所有 Widget 的 ListView
  Widget toListView({
    Key? key,
    Axis scrollDirection = Axis.vertical,
  }) =>
      ListView(
        key: key,
        scrollDirection: scrollDirection,
        children: this,
      );

  /// 将 Widget 列表转换为 Wrap
  ///
  /// 参数:
  /// - [key]: 用于 Wrap 的可选键
  /// - [direction]: 主轴方向，默认为 Axis.horizontal
  /// - [alignment]: 主轴对齐方式，默认为 WrapAlignment.start
  /// - [spacing]: 主轴方向上的间距，默认为 0.0
  /// - [runAlignment]: 交叉轴对齐方式，默认为 WrapAlignment.start
  /// - [runSpacing]: 交叉轴方向上的间距，默认为 0.0
  /// - [crossAxisAlignment]: 交叉轴上子 Widget 的对齐方式，默认为 WrapCrossAlignment.start
  /// - [textDirection]: 文本方向，可选
  /// - [verticalDirection]: 垂直方向，默认为 VerticalDirection.down
  /// - [clipBehavior]: 超出 Wrap 边界的子 Widget 的裁剪行为，默认为 Clip.none
  /// - [children]: 额外的子 Widget 列表，默认为空
  ///
  /// 返回: 包含列表中所有 Widget 的 Wrap
  Widget toWrap({
    Key? key,
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    double spacing = 0.0,
    WrapAlignment runAlignment = WrapAlignment.start,
    double runSpacing = 0.0,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    Clip clipBehavior = Clip.none,
    List<Widget> children = const <Widget>[],
  }) =>
      Wrap(
        key: key,
        direction: direction,
        alignment: alignment,
        spacing: spacing,
        runAlignment: runAlignment,
        runSpacing: runSpacing,
        crossAxisAlignment: crossAxisAlignment,
        textDirection: textDirection,
        verticalDirection: verticalDirection,
        clipBehavior: clipBehavior,
        children: this,
      );
}
