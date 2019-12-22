import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dotpay_dorrio/dotpay_dorrio.dart';

void main() {
  const MethodChannel channel = MethodChannel('dotpay_dorrio');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DotpayDorrio.platformVersion, '42');
  });
}
