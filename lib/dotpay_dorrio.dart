import 'dart:async';

import 'package:flutter/services.dart';

class DotpayDorrio {
  static const MethodChannel _channel = const MethodChannel('dotpay_dorrio');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
  static Future<String> get getDotPayVersion async {
    final String version = await _channel.invokeMethod('getDotPayVersion');
    return version;
  }
}
