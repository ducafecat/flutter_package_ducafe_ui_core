part of '../ducafe_ui_core.dart';

/// Navigator 扩展
/// `context.navigator.push(SomePage())`
extension NavigatorExtensions on BuildContext {
  // ignore: library_private_types_in_public_api
  _Navigator get navigator => _Navigator(
        canPop: _navigator.canPop,
        maybePop: _navigator.maybePop,
        pop: _navigator.pop,
        popUntil: _navigator.popUntil,
        push: _navigator.push,
        pushMaterial: _pushMaterial,
        pushCupertino: _pushCupertino,
        popAndPushNamed: _navigator.popAndPushNamed,
        pushAndRemoveUntil: _navigator.pushAndRemoveUntil,
        pushNamed: _navigator.pushNamed,
        pushNamedAndRemoveUntil: _navigator.pushNamedAndRemoveUntil,
        pushReplacement: _navigator.pushReplacement,
        pushReplacementMaterial: _pushReplacementMaterial,
        pushReplacementCupertino: _pushReplacementCupertino,
        pushReplacementNamed: _navigator.pushReplacementNamed,
        removeRoute: _navigator.removeRoute,
        removeRouteBelow: _navigator.removeRouteBelow,
        replace: _navigator.replace,
        replaceRouteBelow: _navigator.replaceRouteBelow,
      );

  /// 获取当前上下文的 NavigatorState
  ///
  /// 返回: 当前上下文的 NavigatorState 实例
  NavigatorState get _navigator => Navigator.of(this);

  /// 使用 MaterialPageRoute 推送新页面
  ///
  /// 参数:
  /// - page: 要推送的新页面 Widget
  /// - settings: 路由的配置信息，可选
  /// - maintainState: 是否在路由栈中维护此路由的状态，默认为 true
  /// - fullscreenDialog: 是否将路由呈现为全屏对话框，默认为 false
  /// - allowSnapshotting: 是否允许对此路由进行快照，默认为 true
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  Future<T?> _pushMaterial<T>(
    Widget page, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) =>
      _navigator.push<T>(
        MaterialPageRoute(
          builder: (_) => page,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
          allowSnapshotting: allowSnapshotting,
        ),
      );

  /// 使用 CupertinoPageRoute 推送新页面
  ///
  /// 参数:
  /// - page: 要推送的新页面 Widget
  /// - title: 页面标题，可选
  /// - settings: 路由的配置信息，可选
  /// - maintainState: 是否在路由栈中维护此路由的状态，默认为 true
  /// - fullscreenDialog: 是否将路由呈现为全屏对话框，默认为 false
  /// - allowSnapshotting: 是否允许对此路由进行快照，默认为 true
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  Future<T?> _pushCupertino<T>(
    Widget page, {
    String? title,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
  }) =>
      _navigator.push<T>(
        CupertinoPageRoute(
          builder: (_) => page,
          title: title,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
          allowSnapshotting: allowSnapshotting,
        ),
      );

  /// 使用 MaterialPageRoute 替换当前页面
  ///
  /// 参数:
  /// - page: 要替换为的新页面 Widget
  /// - settings: 路由的配置信息，可选
  /// - maintainState: 是否在路由栈中维护此路由的状态，默认为 true
  /// - fullscreenDialog: 是否将路由呈现为全屏对话框，默认为 false
  /// - allowSnapshotting: 是否允许对此路由进行快照，默认为 true
  /// - result: 要传递给上一个路由的结果，可选
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  Future<T?> _pushReplacementMaterial<T, TO>(
    Widget page, {
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
    TO? result,
  }) =>
      _navigator.pushReplacement<T, TO>(
        MaterialPageRoute(
          builder: (_) => page,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
          allowSnapshotting: allowSnapshotting,
        ),
        result: result,
      );

  /// 使用 CupertinoPageRoute 替换当前页面
  ///
  /// 参数:
  /// - page: 要替换为的新页面 Widget
  /// - title: 页面标题，可选
  /// - settings: 路由的配置信息，可选
  /// - maintainState: 是否在路由栈中维护此路由的状态，默认为 true
  /// - fullscreenDialog: 是否将路由呈现为全屏对话框，默认为 false
  /// - allowSnapshotting: 是否允许对此路由进行快照，默认为 true
  /// - result: 要传递给上一个路由的结果，可选
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  Future<T?> _pushReplacementCupertino<T, TO>(
    Widget page, {
    String? title,
    RouteSettings? settings,
    bool maintainState = true,
    bool fullscreenDialog = false,
    bool allowSnapshotting = true,
    TO? result,
  }) =>
      _navigator.pushReplacement<T, TO>(
        CupertinoPageRoute(
          builder: (_) => page,
          title: title,
          settings: settings,
          maintainState: maintainState,
          fullscreenDialog: fullscreenDialog,
          allowSnapshotting: allowSnapshotting,
        ),
        result: result,
      );
}

class _Navigator {
  const _Navigator({
    required this.canPop,
    required this.maybePop,
    required this.pop,
    required this.popUntil,
    required this.push,
    required this.pushMaterial,
    required this.pushCupertino,
    required this.popAndPushNamed,
    required this.pushAndRemoveUntil,
    required this.pushNamed,
    required this.pushNamedAndRemoveUntil,
    required this.pushReplacement,
    required this.pushReplacementNamed,
    required this.removeRoute,
    required this.removeRouteBelow,
    required this.replace,
    required this.replaceRouteBelow,
    required this.pushReplacementMaterial,
    required this.pushReplacementCupertino,
  });

  /// 检查是否可以弹出当前路由
  ///
  /// 返回: 如果导航器可以弹出当前路由，则返回 true
  ///
  /// 参考 [NavigatorState.canPop]
  final bool Function() canPop;

  /// 尝试弹出当前路由
  ///
  /// 参数:
  /// - result: 可选，要传递给上一个路由的结果
  ///
  /// 返回: 一个 Future<bool>，如果路由被弹出则为 true，否则为 false
  ///
  /// 参考 [NavigatorState.maybePop]
  final Future<bool> Function<T extends Object?>([T? result]) maybePop;

  /// 弹出当前路由
  ///
  /// 参数:
  /// - result: 可选，要传递给上一个路由的结果
  ///
  /// 参考 [NavigatorState.pop]
  final void Function<T extends Object?>([T? result]) pop;

  /// 弹出路由直到满足条件
  ///
  /// 参数:
  /// - predicate: 一个函数，用于决定何时停止弹出路由
  ///
  /// 参考 [NavigatorState.popUntil]
  final void Function(RoutePredicate predicate) popUntil;

  /// 推送新路由
  ///
  /// 参数:
  /// - route: 要推送的新路由
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.push]
  final Future<T?> Function<T extends Object?>(Route<T> route) push;

  /// 使用 MaterialPageRoute 推送新页面
  ///
  /// 参数:
  /// - page: 要推送的新页面 Widget
  /// - settings: 路由的配置信息，可选
  /// - maintainState: 是否在路由栈中维护此路由的状态
  /// - fullscreenDialog: 是否将路由呈现为全屏对话框
  /// - allowSnapshotting: 是否允许对此路由进行快照
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.push]
  final Future<T?> Function<T extends Object?>(
    Widget page, {
    RouteSettings? settings,
    bool maintainState,
    bool fullscreenDialog,
    bool allowSnapshotting,
  }) pushMaterial;

  /// 使用 CupertinoPageRoute 推送新页面
  ///
  /// 参数:
  /// - page: 要推送的新页面 Widget
  /// - settings: 路由的配置信息，可选
  /// - maintainState: 是否在路由栈中维护此路由的状态
  /// - fullscreenDialog: 是否将路由呈现为全屏对话框
  /// - allowSnapshotting: 是否允许对此路由进行快照
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.push]
  final Future<T?> Function<T extends Object?>(
    Widget page, {
    RouteSettings? settings,
    bool maintainState,
    bool fullscreenDialog,
    bool allowSnapshotting,
  }) pushCupertino;

  /// 弹出当前路由并推送命名路由
  ///
  /// 参数:
  /// - routeName: 要推送的路由名称
  /// - result: 可选，要传递给上一个路由的结果
  /// - arguments: 可选，传递给新路由的参数
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.popAndPushNamed]
  final Future<T?> Function<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) popAndPushNamed;

  /// 推送新路由并删除之前的路由直到满足条件
  ///
  /// 参数:
  /// - newRoute: 要推送的新路由
  /// - predicate: 一个函数，用于决定何时停止删除路由
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.pushAndRemoveUntil]
  final Future<T?> Function<T extends Object?>(
    Route<T> newRoute,
    RoutePredicate predicate,
  ) pushAndRemoveUntil;

  /// 推送命名路由
  ///
  /// 参数:
  /// - routeName: 要推送的路由名称
  /// - arguments: 可选，传递给新路由的参数
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.pushNamed]
  final Future<T?> Function<T extends Object?>(
    String routeName, {
    Object? arguments,
  }) pushNamed;

  /// 推送命名路由并删除之前的路由直到满足条件
  ///
  /// 参数:
  /// - newRouteName: 要推送的新路由名称
  /// - predicate: 一个函数，用于决定何时停止删除路由
  /// - arguments: 可选，传递给新路由的参数
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.pushNamedAndRemoveUntil]
  final Future<T?> Function<T extends Object?>(
    String newRouteName,
    RoutePredicate predicate, {
    Object? arguments,
  }) pushNamedAndRemoveUntil;

  /// 推送新路由并替换当前路由
  ///
  /// 参数:
  /// - newRoute: 要推送的新路由
  /// - result: 可选，要传递给上一个路由的结果
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.pushReplacement]
  final Future<T?> Function<T extends Object?, TO extends Object?>(
    Route<T> newRoute, {
    TO? result,
  }) pushReplacement;

  /// 使用 MaterialPageRoute 推送新页面并替换当前路由
  ///
  /// 参数:
  /// - page: 要推送的新页面 Widget
  /// - settings: 路由的配置信息，可选
  /// - maintainState: 是否在路由栈中维护此路由的状态
  /// - fullscreenDialog: 是否将路由呈现为全屏对话框
  /// - allowSnapshotting: 是否允许对此路由进行快照
  /// - result: 可选，要传递给上一个路由的结果
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.pushReplacement]
  final Future<T?> Function<T extends Object?, TO extends Object?>(
    Widget page, {
    RouteSettings? settings,
    bool maintainState,
    bool fullscreenDialog,
    bool allowSnapshotting,
    TO? result,
  }) pushReplacementMaterial;

  /// 使用 CupertinoPageRoute 推送新页面并替换当前路由
  ///
  /// 参数:
  /// - page: 要推送的新页面 Widget
  /// - settings: 路由的配置信息，可选
  /// - maintainState: 是否在路由栈中维护此路由的状态
  /// - fullscreenDialog: 是否将路由呈现为全屏对话框
  /// - allowSnapshotting: 是否允许对此路由进行快照
  /// - result: 可选，要传递给上一个路由的结果
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.pushReplacement]
  final Future<T?> Function<T extends Object?, TO extends Object?>(
    Widget page, {
    RouteSettings? settings,
    bool maintainState,
    bool fullscreenDialog,
    bool allowSnapshotting,
    TO? result,
  }) pushReplacementCupertino;

  /// 推送命名路由并替换当前路由
  ///
  /// 参数:
  /// - routeName: 要推送的路由名称
  /// - result: 可选，要传递给上一个路由的结果
  /// - arguments: 可选，传递给新路由的参数
  ///
  /// 返回: 一个 Future，解析为从推送的路由弹出时返回的值（如果有）
  ///
  /// 参考 [NavigatorState.pushReplacementNamed]
  final Future<T?> Function<T extends Object?, TO extends Object?>(
    String routeName, {
    TO? result,
    Object? arguments,
  }) pushReplacementNamed;

  /// 移除指定路由
  ///
  /// 参数:
  /// - route: 要移除的路由
  ///
  /// 参考 [NavigatorState.removeRoute]
  final void Function(Route<dynamic> route) removeRoute;

  /// 移除指定路由下方的路由
  ///
  /// 参数:
  /// - anchorRoute: 锚点路由，将移除此路由下方的路由
  ///
  /// 参考 [NavigatorState.removeRouteBelow]
  final void Function(Route<dynamic> anchorRoute) removeRouteBelow;

  /// 替换指定路由
  ///
  /// 参数:
  /// - oldRoute: 要被替换的旧路由
  /// - newRoute: 用于替换的新路由
  ///
  /// 参考 [NavigatorState.replace]
  final void Function<T extends Object?>({
    required Route<dynamic> oldRoute,
    required Route<T> newRoute,
  }) replace;

  /// 替换指定路由下方的路由
  ///
  /// 参数:
  /// - anchorRoute: 锚点路由，将替换此路由下方的路由
  /// - newRoute: 用于替换的新路由
  ///
  /// 参考 [NavigatorState.replaceRouteBelow]
  final void Function<T extends Object?>({
    required Route<dynamic> anchorRoute,
    required Route<T> newRoute,
  }) replaceRouteBelow;
}
