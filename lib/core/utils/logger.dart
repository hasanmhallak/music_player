// ignore_for_file: unused_field

import 'dart:developer' as d show log;

import 'package:flutter/foundation.dart';

class Log {
  static const _bold = '\x1b[1m';
  static const _light = '\x1b[2m';
  static const _underscore = '\x1b[4m';
  static const _blink = '\x1b[5m';
  static const _hidden = '\x1b[8m';
  static const _black = '\x1b[30m';
  static const _red = '\x1b[31m';
  static const _green = '\x1b[32m';
  static const _yellow = '\x1b[33m';
  static const _blue = '\x1b[34m';
  static const _magenta = '\x1b[35m';
  static const _cyan = '\x1b[36m';
  static const _white = '\x1b[37m';
  static const _bgBlack = '\x1b[40m';
  static const _bgRed = '\x1b[41m';
  static const _bgGreen = '\x1b[42m';
  static const _bgYellow = '\x1b[43m';
  static const _bgBlue = '\x1b[44m';
  static const _bgMagenta = '\x1b[45m';
  static const _bgCyan = '\x1b[46m';
  static const _bgWhite = '\x1b[47m';
  static const _start = '\x1b[90m';
  static const _end = '\x1b[0m';

  /// Logs Info Message.
  static void i(Object? message) {
    if (kDebugMode || kProfileMode) {
      d.log('$_cyan$message$_end');
    }
  }

  /// Logs Error Message.
  static void error(
    Object? message, {
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (kDebugMode || kProfileMode) {
      d.log(
        '$_red$_bold${_blink}Error!:\n$_end$_start$_red$_bold$message$_end',
        error: error,
        stackTrace: stackTrace,
      );
    }
  }
}
