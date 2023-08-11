import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_carplay_master_method_channel.dart';

abstract class FlutterCarplayMasterPlatform extends PlatformInterface {
  /// Constructs a FlutterCarplayMasterPlatform.
  FlutterCarplayMasterPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterCarplayMasterPlatform _instance = MethodChannelFlutterCarplayMaster();

  /// The default instance of [FlutterCarplayMasterPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterCarplayMaster].
  static FlutterCarplayMasterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterCarplayMasterPlatform] when
  /// they register themselves.
  static set instance(FlutterCarplayMasterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
