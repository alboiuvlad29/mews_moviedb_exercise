import 'dart:io';

import 'package:dio/dio.dart';

extension DioErrorExtension on DioError {
  bool get isNoConnectionError {
    return type == DioErrorType.other && error is SocketException;
  }
}
