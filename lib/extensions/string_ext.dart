part of '../ducafe_ui_core.dart';

/// String 字符串扩展
extension StringExtensions on String {
  /// 每个单词都大写
  /// `hello world` becomes `Hello World`.
  String capitalize() {
    return split(' ').map((e) => e.capitalizeFirst()).join(' ');
  }

  /// 首字母大写
  /// `hello world` becomes `Hello world`.
  String capitalizeFirst() {
    if (length == 0) return '';
    if (length == 1) return toUpperCase();
    return substring(0, 1).toUpperCase() + substring(1);
  }

  /// 是否 bool
  ///
  /// If [caseSensitive] is `true`, which is the default,
  /// the only accepted inputs are the strings `"true"` and `"false"`,
  /// Example:
  /// ```dart
  /// print('true'.isBool()); // true
  /// print('false'.isBool()); // true
  /// print('TRUE'.isBool()); // false
  /// print('TRUE'.isBool(caseSensitive: false)); // true
  /// print('FALSE'.isBool(caseSensitive: false)); // true
  /// print('NO'.isBool()); // false
  /// print('YES'.isBool()); // false
  /// print('0'.isBool()); // false
  /// print('1'.isBool()); // false
  /// ```
  bool isBool({bool caseSensitive = true}) =>
      bool.tryParse(this, caseSensitive: caseSensitive) != null;

  /// 转 bool
  ///
  /// Throws if the string is not a Boolean.
  /// If [caseSensitive] is `true`, which is the default,
  /// the only accepted inputs are the strings `"true"` and `"false"`,
  bool toBool({bool caseSensitive = true}) =>
      bool.parse(this, caseSensitive: caseSensitive);

  /// 是否数字
  ///
  /// print('2021'.isNum()); // true
  /// print('3.14'.isNum()); // true
  /// print('  3.14 \xA0'.isNum()); // true
  /// print('0.'.isNum()); // true
  /// print('.0'.isNum()); // true
  /// print('-1.e3'.isNum()); // true
  /// print('1234E+7'.isNum()); // true
  /// print('+.12e-9'.isNum()); // true
  /// print('-NaN'.isNum()); // true
  /// print('0xFF'.isNum()); // true
  /// print(double.infinity.toString().isNum()); // true
  /// print('1f'.isNum()); // false
  bool isNum() => num.tryParse(this) != null;

  /// 转数字
  num toNum() => num.parse(this);

  /// 是否 double
  bool isDouble() => double.tryParse(this) != null;

  /// 转 double
  double toDouble() => double.parse(this);

  /// 是否 int
  bool isInt() => int.tryParse(this) != null;

  /// 转 int
  int toInt() => int.parse(this);

  /// 生成 Color
  Color get toColor {
    return Color(int.parse(this, radix: 16) | 0xFF000000);
  }

  /// 生成 MaterialColor
  Color get toMaterialColor {
    Color color = toColor;

    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  /// 清除所有空格
  String removeAllWhitespace() => replaceAll(' ', '');

  /// 正则检查匹配
  bool hasMatch(String pattern) => RegExp(pattern).hasMatch(this);
}
