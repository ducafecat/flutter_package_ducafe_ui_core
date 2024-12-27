part of '../../ducafe_ui_core.dart';

typedef FontSizeResolver = double Function(num fontSize, ScreenUtil instance);

class ScreenUtil {
  /// 默认设计尺寸
  static const Size defaultSize = Size(360, 690);

  /// ScreenUtil 单例实例
  static final ScreenUtil _instance = ScreenUtil._();

  /// 控制是否启用宽高缩放的函数
  static bool Function() _enableScaleWH = () => true;

  /// 控制是否启用文本缩放的函数
  static bool Function() _enableScaleText = () => true;

  /// UI设计中手机尺寸，单位为 dp
  late Size _uiSize;

  /// 屏幕方向
  late Orientation _orientation;

  /// 是否启用最小文本自适应
  late bool _minTextAdapt;

  /// 媒体查询数据
  late MediaQueryData _data;

  /// 是否启用分屏模式
  late bool _splitScreenMode;

  /// 字体大小解析器
  FontSizeResolver? fontSizeResolver;

  /// 私有构造函数
  ScreenUtil._();

  /// 工厂构造函数，返回单例实例
  factory ScreenUtil() => _instance;

  /// 启用或禁用缩放
  ///
  /// 参数:
  /// - enableWH: 控制是否启用宽高缩放的函数
  /// - enableText: 控制是否启用文本缩放的函数
  ///
  /// 如果 enableWH 返回 false，宽度和高度的缩放比例将为 1
  /// 如果 enableText 返回 false，文本的缩放比例将为 1
  static void enableScale(
      {bool Function()? enableWH, bool Function()? enableText}) {
    _enableScaleWH = enableWH ?? () => true;
    _enableScaleText = enableText ?? () => true;
  }

  /// 手动等待窗口大小初始化
  ///
  /// 建议在需要访问窗口大小之前使用，或在自定义启动/引导屏幕的 [FutureBuilder] 中使用
  ///
  /// 参数:
  /// - window: Flutter 视图对象，默认为 null
  /// - duration: 轮询间隔，默认为 10 毫秒
  ///
  /// 返回:
  /// - Future<void>: 当窗口大小初始化完成时完成的 Future
  ///
  /// 示例:
  /// ```dart
  /// ...
  /// ScreenUtil.init(context, ...);
  /// ...
  ///   FutureBuilder(
  ///     future: Future.wait([..., ensureScreenSize(), ...]),
  ///     builder: (context, snapshot) {
  ///       if (snapshot.hasData) return const HomeScreen();
  ///       return Material(
  ///         child: LayoutBuilder(
  ///           ...
  ///         ),
  ///       );
  ///     },
  ///   )
  /// ```
  static Future<void> ensureScreenSize([
    FlutterView? window,
    Duration duration = const Duration(milliseconds: 10),
  ]) async {
    final binding = WidgetsFlutterBinding.ensureInitialized();
    binding.deferFirstFrame();

    await Future.doWhile(() {
      window ??= binding.platformDispatcher.implicitView;

      if (window == null || window!.physicalSize.isEmpty) {
        return Future.delayed(duration, () => true);
      }

      return false;
    });

    binding.allowFirstFrame();
  }

  /// 需要重建的元素集合
  Set<Element>? _elementsToRebuild;

  /// 注册当前页面及其所有后代以进行重建
  /// 在构建 Web 和桌面应用时特别有用
  ///
  /// 参数:
  /// - context: 构建上下文
  /// - withDescendants: 是否包括后代元素，默认为 false
  ///
  /// 注意: 此方法为实验性功能
  static void registerToBuild(
    BuildContext context, [
    bool withDescendants = false,
  ]) {
    (_instance._elementsToRebuild ??= {}).add(context as Element);

    if (withDescendants) {
      context.visitChildren((element) {
        registerToBuild(element, true);
      });
    }
  }

  /// 配置 ScreenUtil 实例
  ///
  /// 参数:
  /// - data: 媒体查询数据，可选
  /// - designSize: 设计尺寸，可选
  /// - splitScreenMode: 是否启用分屏模式，可选
  /// - minTextAdapt: 是否启用最小文本自适应，可选
  /// - fontSizeResolver: 字体大小解析器，可选
  ///
  /// 抛出:
  /// - Exception: 如果在调用 ScreenUtil.init 或 ScreenUtilInit 之前使用
  static void configure({
    MediaQueryData? data,
    Size? designSize,
    bool? splitScreenMode,
    bool? minTextAdapt,
    FontSizeResolver? fontSizeResolver,
  }) {
    try {
      if (data != null) {
        _instance._data = data;
      } else {
        data = _instance._data;
      }

      if (designSize != null) {
        _instance._uiSize = designSize;
      } else {
        designSize = _instance._uiSize;
      }
    } catch (_) {
      throw Exception(
          'You must either use ScreenUtil.init or ScreenUtilInit first');
    }

    final MediaQueryData? deviceData = data.nonEmptySizeOrNull();
    final Size deviceSize = deviceData?.size ?? designSize;

    final orientation = deviceData?.orientation ??
        (deviceSize.width > deviceSize.height
            ? Orientation.landscape
            : Orientation.portrait);

    _instance
      ..fontSizeResolver = fontSizeResolver ?? _instance.fontSizeResolver
      .._minTextAdapt = minTextAdapt ?? _instance._minTextAdapt
      .._splitScreenMode = splitScreenMode ?? _instance._splitScreenMode
      .._orientation = orientation;

    _instance._elementsToRebuild?.forEach((el) => el.markNeedsBuild());
  }

  /// 初始化 ScreenUtil 库
  ///
  /// 参数:
  /// - context: 构建上下文
  /// - designSize: 设计尺寸，默认为 defaultSize
  /// - splitScreenMode: 是否启用分屏模式，默认为 false
  /// - minTextAdapt: 是否启用最小文本自适应，默认为 false
  /// - fontSizeResolver: 字体大小解析器，可选
  static void init(
    BuildContext context, {
    Size designSize = defaultSize,
    bool splitScreenMode = false,
    bool minTextAdapt = false,
    FontSizeResolver? fontSizeResolver,
  }) {
    final view = View.maybeOf(context);
    return configure(
      data: view != null ? MediaQueryData.fromView(view) : null,
      designSize: designSize,
      splitScreenMode: splitScreenMode,
      minTextAdapt: minTextAdapt,
      fontSizeResolver: fontSizeResolver,
    );
  }

  /// 确保屏幕尺寸已初始化，然后初始化 ScreenUtil
  ///
  /// 参数:
  /// - context: 构建上下文
  /// - designSize: 设计尺寸，默认为 defaultSize
  /// - splitScreenMode: 是否启用分屏模式，默认为 false
  /// - minTextAdapt: 是否启用最小文本自适应，默认为 false
  /// - fontSizeResolver: 字体大小解析器，可选
  ///
  /// 返回:
  /// - Future<void>: 当初始化完成时完成的 Future
  static Future<void> ensureScreenSizeAndInit(
    BuildContext context, {
    Size designSize = defaultSize,
    bool splitScreenMode = false,
    bool minTextAdapt = false,
    FontSizeResolver? fontSizeResolver,
  }) {
    return ScreenUtil.ensureScreenSize().then((_) {
      return init(
        context,
        designSize: designSize,
        minTextAdapt: minTextAdapt,
        splitScreenMode: splitScreenMode,
        fontSizeResolver: fontSizeResolver,
      );
    });
  }

  /// 获取屏幕方向
  ///
  /// 返回: 当前的屏幕方向 (Orientation)
  Orientation get orientation => _orientation;

  /// 获取文本缩放因子
  ///
  /// 返回: 每个逻辑像素的字体像素数，即字体的缩放比例
  // double get textScaleFactor => _data.textScaleFactor;

  /// 获取设备的像素密度
  ///
  /// 返回: 设备的像素密度 (设备物理像素和逻辑像素的比率)
  double? get pixelRatio => _data.devicePixelRatio;

  /// 获取当前设备宽度
  ///
  /// 返回: 当前设备的宽度，单位为 dp
  double get screenWidth => _data.size.width;

  /// 获取当前设备高度
  ///
  /// 返回: 当前设备的高度，单位为 dp
  double get screenHeight => _data.size.height;

  /// 获取状态栏高度
  ///
  /// 返回: 状态栏的高度，单位为 dp (刘海屏会更高)
  double get statusBarHeight => _data.padding.top;

  /// 获取底部安全区距离
  ///
  /// 返回: 底部安全区的距离，单位为 dp
  double get bottomBarHeight => _data.padding.bottom;

  /// 获取实际宽度与UI设计宽度的比例
  ///
  /// 返回: 如果启用了宽度缩放，返回实际宽度与设计宽度的比例；否则返回 1
  double get scaleWidth => !_enableScaleWH() ? 1 : screenWidth / _uiSize.width;

  /// 获取实际高度与UI设计高度的比例
  ///
  /// 返回: 如果启用了高度缩放，返回实际高度与设计高度的比例；否则返回 1
  double get scaleHeight => !_enableScaleWH()
      ? 1
      : (_splitScreenMode ? max(screenHeight, 700) : screenHeight) /
          _uiSize.height;

  /// 获取文本缩放比例
  ///
  /// 返回: 文本的缩放比例
  double get scaleText => !_enableScaleText()
      ? 1
      : (_minTextAdapt ? min(scaleWidth, scaleHeight) : scaleWidth);

  /// 根据UI设计的设备宽度适配尺寸
  ///
  /// 参数:
  /// - width: 设计稿上的宽度
  ///
  /// 返回: 适配后的宽度
  double setWidth(num width) => width * scaleWidth;

  /// 根据UI设计的设备高度适配尺寸
  ///
  /// 参数:
  /// - height: 设计稿上的高度
  ///
  /// 返回: 适配后的高度
  double setHeight(num height) => height * scaleHeight;

  /// 根据宽度或高度中的较小值进行适配
  ///
  /// 参数:
  /// - r: 设计稿上的尺寸
  ///
  /// 返回: 适配后的尺寸
  double radius(num r) => r * min(scaleWidth, scaleHeight);

  /// 根据宽度和高度同时进行适配
  ///
  /// 参数:
  /// - d: 设计稿上的尺寸
  ///
  /// 返回: 适配后的尺寸
  double diagonal(num d) => d * scaleHeight * scaleWidth;

  /// 根据宽度和高度的最大值进行适配
  ///
  /// 参数:
  /// - d: 设计稿上的尺寸
  ///
  /// 返回: 适配后的尺寸
  double diameter(num d) => d * max(scaleWidth, scaleHeight);

  /// 字体大小适配方法
  ///
  /// 参数:
  /// - fontSize: UI设计上字体的大小，单位dp
  ///
  /// 返回: 适配后的字体大小
  double setSp(num fontSize) =>
      fontSizeResolver?.call(fontSize, _instance) ?? fontSize * scaleText;

  /// 获取设备类型
  ///
  /// 参数:
  /// - context: 构建上下文
  ///
  /// 返回: 当前设备的类型 (DeviceType)
  DeviceType deviceType(BuildContext context) {
    var deviceType = DeviceType.web;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final orientation = MediaQuery.of(context).orientation;

    if (kIsWeb) {
      deviceType = DeviceType.web;
    } else {
      bool isMobile = defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.android;
      bool isTablet =
          (orientation == Orientation.portrait && screenWidth >= 600) ||
              (orientation == Orientation.landscape && screenHeight >= 600);

      if (isMobile) {
        deviceType = isTablet ? DeviceType.tablet : DeviceType.mobile;
      } else {
        switch (defaultTargetPlatform) {
          case TargetPlatform.linux:
            deviceType = DeviceType.linux;
            break;
          case TargetPlatform.macOS:
            deviceType = DeviceType.mac;
            break;
          case TargetPlatform.windows:
            deviceType = DeviceType.windows;
            break;
          case TargetPlatform.fuchsia:
            deviceType = DeviceType.fuchsia;
            break;
          default:
            break;
        }
      }
    }

    return deviceType;
  }

  /// 创建垂直间距
  ///
  /// 参数:
  /// - height: 设计稿上的高度
  ///
  /// 返回: 一个高度经过适配的 SizedBox
  SizedBox setVerticalSpacing(num height) =>
      SizedBox(height: setHeight(height));

  /// 创建基于宽度的垂直间距
  ///
  /// 参数:
  /// - height: 设计稿上的宽度值（用作高度）
  ///
  /// 返回: 一个高度基于宽度适配的 SizedBox
  SizedBox setVerticalSpacingFromWidth(num height) =>
      SizedBox(height: setWidth(height));

  /// 创建水平间距
  ///
  /// 参数:
  /// - width: 设计稿上的宽度
  ///
  /// 返回: 一个宽度经过适配的 SizedBox
  SizedBox setHorizontalSpacing(num width) => SizedBox(width: setWidth(width));

  /// 创建基于半径的水平间距
  ///
  /// 参数:
  /// - width: 设计稿上的半径值（用作宽度）
  ///
  /// 返回: 一个宽度基于半径适配的 SizedBox
  SizedBox setHorizontalSpacingRadius(num width) =>
      SizedBox(width: radius(width));

  /// 创建基于半径的垂直间距
  ///
  /// 参数:
  /// - height: 设计稿上的半径值（用作高度）
  ///
  /// 返回: 一个高度基于半径适配的 SizedBox
  SizedBox setVerticalSpacingRadius(num height) =>
      SizedBox(height: radius(height));

  /// 创建基于直径的水平间距
  ///
  /// 参数:
  /// - width: 设计稿上的直径值（用作宽度）
  ///
  /// 返回: 一个宽度基于直径适配的 SizedBox
  SizedBox setHorizontalSpacingDiameter(num width) =>
      SizedBox(width: diameter(width));

  /// 创建基于直径的垂直间距
  ///
  /// 参数:
  /// - height: 设计稿上的直径值（用作高度）
  ///
  /// 返回: 一个高度基于直径适配的 SizedBox
  SizedBox setVerticalSpacingDiameter(num height) =>
      SizedBox(height: diameter(height));

  /// 创建基于对角线的水平间距
  ///
  /// 参数:
  /// - width: 设计稿上的对角线值（用作宽度）
  ///
  /// 返回: 一个宽度基于对角线适配的 SizedBox
  SizedBox setHorizontalSpacingDiagonal(num width) =>
      SizedBox(width: diagonal(width));

  /// 创建基于对角线的垂直间距
  ///
  /// 参数:
  /// - height: 设计稿上的对角线值（用作高度）
  ///
  /// 返回: 一个高度基于对角线适配的 SizedBox
  SizedBox setVerticalSpacingDiagonal(num height) =>
      SizedBox(height: diagonal(height));
}

extension on MediaQueryData? {
  /// 检查 MediaQueryData 是否具有非空的尺寸
  ///
  /// 此方法用于确保 MediaQueryData 对象具有有效的尺寸。
  /// 如果尺寸为空或 MediaQueryData 为 null，则返回 null。
  ///
  /// 返回:
  /// - MediaQueryData?: 如果尺寸非空，则返回原始 MediaQueryData 对象；否则返回 null
  MediaQueryData? nonEmptySizeOrNull() {
    if (this?.size.isEmpty ?? true) {
      return null;
    } else {
      return this;
    }
  }
}

enum DeviceType { mobile, tablet, web, mac, windows, linux, fuchsia }
