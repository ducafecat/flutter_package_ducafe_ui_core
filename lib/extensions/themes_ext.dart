part of '../ducafe_ui_core.dart';

/// theme 主题访问扩展
/// `context.themes.icon`
extension ThemesExtensions on BuildContext {
  // ignore: library_private_types_in_public_api
  _Themes get themes => _Themes(
        button: _buttonTheme,
        toggleButtons: _toggleButtonsTheme,
        text: _textTheme,
        primaryText: _primaryTextTheme,
        inputDecoration: _inputDecorationTheme,
        icon: _iconTheme,
        primaryIcon: _primaryIconTheme,
        slider: _sliderTheme,
        tabBar: _tabBarTheme,
        tooltip: _tooltipTheme,
        card: _cardTheme,
        chip: _chipTheme,
        appBar: _appBarTheme,
        scrollbar: _scrollbarTheme,
        bottomAppBar: _bottomAppBarTheme,
        dialog: _dialogTheme,
        floatingActionButton: _floatingActionButtonTheme,
        navigationRail: _navigationRailTheme,
        cupertinoOverride: _cupertinoOverrideTheme,
        snackBar: _snackBarTheme,
        bottomSheet: _bottomSheetTheme,
        popupMenu: _popupMenuTheme,
        banner: _bannerTheme,
        divider: _dividerTheme,
        buttonBar: _buttonBarTheme,
        bottomNavigationBar: _bottomNavigationBarTheme,
        timePicker: _timePickerTheme,
        textButton: _textButtonTheme,
        elevatedButton: _elevatedButtonTheme,
        outlinedButton: _outlinedButtonTheme,
        textSelection: _textSelectionTheme,
        dataTable: _dataTableTheme,
        checkbox: _checkboxTheme,
        radio: _radioTheme,
        switchTheme: _switchTheme,
        badge: _badgeTheme,
        drawer: _drawerTheme,
        dropdownMenu: _dropdownMenuTheme,
        expansionTile: _expansionTileTheme,
        extensions: _extensions,
        filledButton: _filledButtonTheme,
        iconButton: _iconButtonTheme,
        listTile: _listTileTheme,
        menu: _menuTheme,
        menuBar: _menuBarTheme,
        menuButton: _menuButtonTheme,
        navigationBar: _navigationBarTheme,
        navigationDrawer: _navigationDrawerTheme,
        pageTransitions: _pageTransitionsTheme,
        progressIndicator: _progressIndicatorTheme,
        segmentedButton: _segmentedButtonTheme,
      );

  /// 获取当前主题数据
  ///
  /// 返回: 当前的 ThemeData 对象
  ThemeData get _themeData => Theme.of(this);

  /// 获取文本主题
  ///
  /// 返回: 当前主题的 TextTheme 对象
  TextTheme get _textTheme => _themeData.textTheme;

  /// 获取按钮主题数据
  ///
  /// 返回: 当前主题的 ButtonThemeData 对象
  ButtonThemeData get _buttonTheme => _themeData.buttonTheme;

  /// 获取切换按钮主题数据
  ///
  /// 返回: 当前主题的 ToggleButtonsThemeData 对象
  ToggleButtonsThemeData get _toggleButtonsTheme =>
      _themeData.toggleButtonsTheme;

  /// 获取主要文本主题
  ///
  /// 返回: 当前主题的主要 TextTheme 对象
  TextTheme get _primaryTextTheme => _themeData.primaryTextTheme;

  /// 获取图标主题数据
  ///
  /// 返回: 当前主题的 IconThemeData 对象
  IconThemeData get _iconTheme => _themeData.iconTheme;

  /// 获取输入装饰主题
  ///
  /// 返回: 当前主题的 InputDecorationTheme 对象
  InputDecorationTheme get _inputDecorationTheme =>
      _themeData.inputDecorationTheme;

  /// 获取主要图标主题数据
  ///
  /// 返回: 当前主题的主要 IconThemeData 对象
  IconThemeData get _primaryIconTheme => _themeData.primaryIconTheme;

  /// 获取滑块主题数据
  ///
  /// 返回: 当前主题的 SliderThemeData 对象
  SliderThemeData get _sliderTheme => _themeData.sliderTheme;

  /// 获取标签栏主题
  ///
  /// 返回: 当前主题的 TabBarTheme 对象
  TabBarTheme get _tabBarTheme => _themeData.tabBarTheme;

  /// 获取工具提示主题数据
  ///
  /// 返回: 当前主题的 TooltipThemeData 对象
  TooltipThemeData get _tooltipTheme => _themeData.tooltipTheme;

  /// 获取卡片主题
  ///
  /// 返回: 当前主题的 CardTheme 对象
  CardTheme get _cardTheme => _themeData.cardTheme;

  /// 获取芯片主题数据
  ///
  /// 返回: 当前主题的 ChipThemeData 对象
  ChipThemeData get _chipTheme => _themeData.chipTheme;

  /// 获取应用栏主题
  ///
  /// 返回: 当前主题的 AppBarTheme 对象
  AppBarTheme get _appBarTheme => _themeData.appBarTheme;

  /// 获取滚动条主题数据
  ///
  /// 返回: 当前主题的 ScrollbarThemeData 对象
  ScrollbarThemeData get _scrollbarTheme => _themeData.scrollbarTheme;

  /// 获取底部应用栏主题
  ///
  /// 返回: 当前主题的 BottomAppBarTheme 对象
  BottomAppBarTheme get _bottomAppBarTheme => _themeData.bottomAppBarTheme;

  /// 获取对话框主题
  ///
  /// 返回: 当前主题的 DialogTheme 对象
  DialogTheme get _dialogTheme => _themeData.dialogTheme;

  /// 获取浮动操作按钮主题数据
  ///
  /// 返回: 当前主题的 FloatingActionButtonThemeData 对象
  FloatingActionButtonThemeData get _floatingActionButtonTheme =>
      _themeData.floatingActionButtonTheme;

  /// 获取导航栏主题数据
  ///
  /// 返回: 当前主题的 NavigationRailThemeData 对象
  NavigationRailThemeData get _navigationRailTheme =>
      _themeData.navigationRailTheme;

  /// 获取 Cupertino 覆盖主题数据
  ///
  /// 返回: 当前主题的 NoDefaultCupertinoThemeData 对象，可能为 null
  NoDefaultCupertinoThemeData? get _cupertinoOverrideTheme =>
      _themeData.cupertinoOverrideTheme;

  /// 获取 Snackbar 主题数据
  ///
  /// 返回: 当前主题的 SnackBarThemeData 对象
  SnackBarThemeData get _snackBarTheme => _themeData.snackBarTheme;

  /// 获取底部表单主题数据
  ///
  /// 返回: 当前主题的 BottomSheetThemeData 对象
  BottomSheetThemeData get _bottomSheetTheme => _themeData.bottomSheetTheme;

  /// 获取弹出菜单主题数据
  ///
  /// 返回: 当前主题的 PopupMenuThemeData 对象
  PopupMenuThemeData get _popupMenuTheme => _themeData.popupMenuTheme;

  /// 获取横幅主题数据
  ///
  /// 返回: 当前主题的 MaterialBannerThemeData 对象
  MaterialBannerThemeData get _bannerTheme => _themeData.bannerTheme;

  /// 获取分隔线主题数据
  ///
  /// 返回: 当前主题的 DividerThemeData 对象
  DividerThemeData get _dividerTheme => _themeData.dividerTheme;

  /// 获取按钮栏主题数据
  ///
  /// 返回: 当前主题的 ButtonBarThemeData 对象
  ButtonBarThemeData get _buttonBarTheme => _themeData.buttonBarTheme;

  /// 获取底部导航栏主题数据
  ///
  /// 返回: 当前主题的 BottomNavigationBarThemeData 对象
  BottomNavigationBarThemeData get _bottomNavigationBarTheme =>
      _themeData.bottomNavigationBarTheme;

  /// 获取时间选择器主题数据
  ///
  /// 返回: 当前主题的 TimePickerThemeData 对象
  TimePickerThemeData get _timePickerTheme => _themeData.timePickerTheme;

  /// 获取文本按钮主题数据
  ///
  /// 返回: 当前主题的 TextButtonThemeData 对象
  TextButtonThemeData get _textButtonTheme => _themeData.textButtonTheme;

  /// 获取凸起按钮主题数据
  ///
  /// 返回: 当前主题的 ElevatedButtonThemeData 对象
  ElevatedButtonThemeData get _elevatedButtonTheme =>
      _themeData.elevatedButtonTheme;

  /// 获取轮廓按钮主题数据
  ///
  /// 返回: 当前主题的 OutlinedButtonThemeData 对象
  OutlinedButtonThemeData get _outlinedButtonTheme =>
      _themeData.outlinedButtonTheme;

  /// 获取文本选择主题数据
  ///
  /// 返回: 当前主题的 TextSelectionThemeData 对象
  TextSelectionThemeData get _textSelectionTheme =>
      _themeData.textSelectionTheme;

  /// 获取数据表格主题数据
  ///
  /// 返回: 当前主题的 DataTableThemeData 对象
  DataTableThemeData get _dataTableTheme => _themeData.dataTableTheme;

  /// 获取复选框主题数据
  ///
  /// 返回: 当前主题的 CheckboxThemeData 对象
  CheckboxThemeData get _checkboxTheme => _themeData.checkboxTheme;

  /// 获取单选按钮主题数据
  ///
  /// 返回: 当前主题的 RadioThemeData 对象
  RadioThemeData get _radioTheme => _themeData.radioTheme;

  /// 获取开关主题数据
  ///
  /// 返回: 当前主题的 SwitchThemeData 对象
  SwitchThemeData get _switchTheme => _themeData.switchTheme;

  /// 获取徽章主题数据
  ///
  /// 返回: 当前主题的 BadgeThemeData 对象
  BadgeThemeData get _badgeTheme => _themeData.badgeTheme;

  /// 获取抽屉主题数据
  ///
  /// 返回: 当前主题的 DrawerThemeData 对象
  DrawerThemeData get _drawerTheme => _themeData.drawerTheme;

  /// 获取下拉菜单主题数据
  ///
  /// 返回: 当前主题的 DropdownMenuThemeData 对象
  DropdownMenuThemeData get _dropdownMenuTheme => _themeData.dropdownMenuTheme;

  /// 获取展开面板主题数据
  ///
  /// 返回: 当前主题的 ExpansionTileThemeData 对象
  ExpansionTileThemeData get _expansionTileTheme =>
      _themeData.expansionTileTheme;

  /// 获取主题扩展
  ///
  /// 返回: 当前主题的扩展 Map
  Map<Object, ThemeExtension<dynamic>> get _extensions => _themeData.extensions;

  /// 获取填充按钮主题数据
  ///
  /// 返回: 当前主题的 FilledButtonThemeData 对象
  FilledButtonThemeData get _filledButtonTheme => _themeData.filledButtonTheme;

  /// 获取图标按钮主题数据
  ///
  /// 返回: 当前主题的 IconButtonThemeData 对象
  IconButtonThemeData get _iconButtonTheme => _themeData.iconButtonTheme;

  /// 获取列表项主题数据
  ///
  /// 返回: 当前主题的 ListTileThemeData 对象
  ListTileThemeData get _listTileTheme => _themeData.listTileTheme;

  /// 获取菜单主题数据
  ///
  /// 返回: 当前主题的 MenuThemeData 对象
  MenuThemeData get _menuTheme => _themeData.menuTheme;

  /// 获取菜单栏主题数据
  ///
  /// 返回: 当前主题的 MenuBarThemeData 对象
  MenuBarThemeData get _menuBarTheme => _themeData.menuBarTheme;

  /// 获取菜单按钮主题数据
  ///
  /// 返回: 当前主题的 MenuButtonThemeData 对象
  MenuButtonThemeData get _menuButtonTheme => _themeData.menuButtonTheme;

  /// 获取导航栏主题数据
  ///
  /// 返回: 当前主题的 NavigationBarThemeData 对象
  NavigationBarThemeData get _navigationBarTheme =>
      _themeData.navigationBarTheme;

  /// 获取导航抽屉主题数据
  ///
  /// 返回: 当前主题的 NavigationDrawerThemeData 对象
  NavigationDrawerThemeData get _navigationDrawerTheme =>
      _themeData.navigationDrawerTheme;

  /// 获取页面转换主题
  ///
  /// 返回: 当前主题的 PageTransitionsTheme 对象
  PageTransitionsTheme get _pageTransitionsTheme =>
      _themeData.pageTransitionsTheme;

  /// 获取进度指示器主题数据
  ///
  /// 返回: 当前主题的 ProgressIndicatorThemeData 对象
  ProgressIndicatorThemeData get _progressIndicatorTheme =>
      _themeData.progressIndicatorTheme;

  /// 获取分段按钮主题数据
  ///
  /// 返回: 当前主题的 SegmentedButtonThemeData 对象
  SegmentedButtonThemeData get _segmentedButtonTheme =>
      _themeData.segmentedButtonTheme;
}

class _Themes {
  const _Themes({
    required this.button,
    required this.toggleButtons,
    required this.text,
    required this.primaryText,
    required this.inputDecoration,
    required this.icon,
    required this.primaryIcon,
    required this.slider,
    required this.tabBar,
    required this.tooltip,
    required this.card,
    required this.chip,
    required this.appBar,
    required this.scrollbar,
    required this.bottomAppBar,
    required this.dialog,
    required this.floatingActionButton,
    required this.navigationRail,
    required this.snackBar,
    required this.bottomSheet,
    required this.popupMenu,
    required this.banner,
    required this.divider,
    required this.buttonBar,
    required this.bottomNavigationBar,
    required this.timePicker,
    required this.textButton,
    required this.elevatedButton,
    required this.outlinedButton,
    required this.textSelection,
    required this.dataTable,
    required this.checkbox,
    required this.radio,
    required this.switchTheme,
    required this.cupertinoOverride,
    required this.pageTransitions,
    required this.extensions,
    required this.badge,
    required this.drawer,
    required this.dropdownMenu,
    required this.expansionTile,
    required this.filledButton,
    required this.iconButton,
    required this.listTile,
    required this.menuBar,
    required this.menuButton,
    required this.menu,
    required this.navigationBar,
    required this.navigationDrawer,
    required this.progressIndicator,
    required this.segmentedButton,
  });

  /// See [ThemeData.buttonTheme].
  final ButtonThemeData button;

  /// See [ThemeData.toggleButtonsTheme].
  final ToggleButtonsThemeData toggleButtons;

  /// See [ThemeData.textTheme].
  final TextTheme text;

  /// See [ThemeData.primaryTextTheme].
  final TextTheme primaryText;

  /// See [ThemeData.inputDecorationTheme].
  final InputDecorationTheme inputDecoration;

  /// See [ThemeData.iconTheme].
  final IconThemeData icon;

  /// See [ThemeData.primaryIconTheme].
  final IconThemeData primaryIcon;

  /// See [ThemeData.sliderTheme].
  final SliderThemeData slider;

  /// See [ThemeData.tabBarTheme].
  final TabBarTheme tabBar;

  /// See [ThemeData.tooltipTheme].
  final TooltipThemeData tooltip;

  /// See [ThemeData.cardTheme].
  final CardTheme card;

  /// See [ThemeData.chipTheme].
  final ChipThemeData chip;

  /// See [ThemeData.appBarTheme].
  final AppBarTheme appBar;

  /// See [ThemeData.scrollbarTheme].
  final ScrollbarThemeData scrollbar;

  /// See [ThemeData.bottomAppBarTheme].
  final BottomAppBarTheme bottomAppBar;

  /// See [ThemeData.dialogTheme].
  final DialogTheme dialog;

  /// See [ThemeData.floatingActionButtonTheme].
  final FloatingActionButtonThemeData floatingActionButton;

  /// See [ThemeData.navigationRailTheme].
  final NavigationRailThemeData navigationRail;

  /// See [ThemeData.cupertinoOverrideTheme].
  final NoDefaultCupertinoThemeData? cupertinoOverride;

  /// See [ThemeData.snackBarTheme].
  final SnackBarThemeData snackBar;

  /// See [ThemeData.bottomSheetTheme].
  final BottomSheetThemeData bottomSheet;

  /// See [ThemeData.popupMenuTheme].
  final PopupMenuThemeData popupMenu;

  /// See [ThemeData.bannerTheme].
  final MaterialBannerThemeData banner;

  /// See [ThemeData.dividerTheme].
  final DividerThemeData divider;

  /// See [ThemeData.buttonBarTheme].
  final ButtonBarThemeData buttonBar;

  /// See [ThemeData.bottomNavigationBarTheme].
  final BottomNavigationBarThemeData bottomNavigationBar;

  /// See [ThemeData.timePickerTheme].
  final TimePickerThemeData timePicker;

  /// See [ThemeData.textButtonTheme].
  final TextButtonThemeData textButton;

  /// See [ThemeData.elevatedButtonTheme].
  final ElevatedButtonThemeData elevatedButton;

  /// See [ThemeData.outlinedButtonTheme].
  final OutlinedButtonThemeData outlinedButton;

  /// See [ThemeData.textSelectionTheme].
  final TextSelectionThemeData textSelection;

  /// See [ThemeData.dataTableTheme].
  final DataTableThemeData dataTable;

  /// See [ThemeData.checkboxTheme].
  final CheckboxThemeData checkbox;

  /// See [ThemeData.radioTheme].
  final RadioThemeData radio;

  /// See [ThemeData.switchTheme].
  final SwitchThemeData switchTheme;

  /// See [ThemeData.pageTransitionsTheme].
  final PageTransitionsTheme pageTransitions;

  /// See [ThemeData.extensions].
  final Map<Object, ThemeExtension<dynamic>> extensions;

  /// See [ThemeData.badgeTheme].
  final BadgeThemeData badge;

  /// See [ThemeData.drawerTheme].
  final DrawerThemeData drawer;

  /// See [ThemeData.dropdownMenuTheme].
  final DropdownMenuThemeData dropdownMenu;

  /// See [ThemeData.expansionTileTheme].
  final ExpansionTileThemeData expansionTile;

  /// See [ThemeData.filledButtonTheme].
  final FilledButtonThemeData filledButton;

  /// See [ThemeData.iconButtonTheme].
  final IconButtonThemeData iconButton;

  /// See [ThemeData.listTileTheme].
  final ListTileThemeData listTile;

  /// See [ThemeData.menuBarTheme].
  final MenuBarThemeData menuBar;

  /// See [ThemeData.menuButtonTheme].
  final MenuButtonThemeData menuButton;

  /// See [ThemeData.menuTheme].
  final MenuThemeData menu;

  /// See [ThemeData.navigationBarTheme].
  final NavigationBarThemeData navigationBar;

  /// See [ThemeData.navigationDrawerTheme].
  final NavigationDrawerThemeData navigationDrawer;

  /// See [ThemeData.progressIndicatorTheme].
  final ProgressIndicatorThemeData progressIndicator;

  /// See [ThemeData.segmentedButtonTheme].
  final SegmentedButtonThemeData segmentedButton;
}

/// Theme mode extensions
extension ThemeModeExt on BuildContext {
  /// Indicates wheter the app is in dark mode
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  /// Indicates wheter the app is in light mode
  bool get isLightMode => Theme.of(this).brightness == Brightness.light;
}
