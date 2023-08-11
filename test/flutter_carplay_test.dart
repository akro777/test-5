import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_carplay');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    // ignore: prefer_typing_uninitialized_variables
    var tester;
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(channel,
        (MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    // ignore: prefer_typing_uninitialized_variables
    var tester;
    tester.binding.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });
}
