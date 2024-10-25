part of '../ducafe_ui_core.dart';

/// 返回时间差 [Duration] 的扩展
extension DurationExtensions on num {
  /// 将数字转换为微秒的 [Duration]
  Duration get microseconds => Duration(microseconds: round());

  /// 将数字转换为毫秒的 [Duration]
  Duration get milliseconds => Duration(milliseconds: round());

  /// 将数字转换为秒的 [Duration]
  Duration get seconds => Duration(seconds: round());

  /// 将数字转换为分钟的 [Duration]
  Duration get minutes => Duration(minutes: round());

  /// 将数字转换为小时的 [Duration]
  Duration get hours => Duration(hours: round());

  /// 将数字转换为天的 [Duration]
  Duration get days => Duration(days: round());

  /// 将数字转换为月的 [Duration]（假设一个月为30天）
  Duration get months => Duration(days: 30 * round());

  /// 将数字转换为季度的 [Duration]（假设一个季度为90天）
  Duration get quarters => Duration(days: 90 * round());

  /// 将数字转换为四个月的 [Duration]（假设四个月为120天）
  Duration get quadrimesters => Duration(days: 120 * round());

  /// 将数字转换为年的 [Duration]（假设一年为365天）
  Duration get years => Duration(days: 365 * round());
}

/// Duration 扩展
extension FutureDuration on Duration {
  /// 启动一个延迟 delayed
  Future<dynamic> future([FutureOr<dynamic> Function()? computation]) {
    return Future.delayed(this, computation);
  }
}
