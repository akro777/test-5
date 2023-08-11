import 'package:flutter_carplay/flutter_carplay_master.dart';
import 'package:flutter_carplay/flutter_carplay_master_method_channel.dart';
import 'package:flutter_carplay/flutter_carplay_master_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_carplay_master/flutter_carplay_master.dart';
import 'package:flutter_carplay_master/flutter_carplay_master_platform_interface.dart';
import 'package:flutter_carplay_master/flutter_carplay_master_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterCarplayMasterPlatform
    with MockPlatformInterfaceMixin
    implements FlutterCarplayMasterPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterCarplayMasterPlatform initialPlatform =
      FlutterCarplayMasterPlatform.instance;

  test('$MethodChannelFlutterCarplayMaster is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterCarplayMaster>());
  });

  test('getPlatformVersion', () async {
    FlutterCarplayMaster flutterCarplayMasterPlugin = FlutterCarplayMaster();
    MockFlutterCarplayMasterPlatform fakePlatform =
        MockFlutterCarplayMasterPlatform();
    FlutterCarplayMasterPlatform.instance = fakePlatform;

    expect(await flutterCarplayMasterPlugin.getPlatformVersion(), '42');
  });
}
