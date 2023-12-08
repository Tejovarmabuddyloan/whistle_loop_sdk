import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'whistle_loop_sdk_method_channel.dart';

abstract class WhistleLoopSdkPlatform extends PlatformInterface {
  /// Constructs a WhistleLoopSdkPlatform.
  WhistleLoopSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static WhistleLoopSdkPlatform _instance = MethodChannelWhistleLoopSdk();

  /// The default instance of [WhistleLoopSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelWhistleLoopSdk].
  static WhistleLoopSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WhistleLoopSdkPlatform] when
  /// they register themselves.
  static set instance(WhistleLoopSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
  Future<String?> initDeviceId() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  Future<String?> getpac() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  Future<String?> getIP() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  Future<String?> getPlatform() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  Future<String?> getDeviceType() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  Future<String> getTime() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  Future<String> getDate() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
  Future<String?> getConnectionType() {
    throw UnimplementedError('initDeviceId() has not been implemented.');
  }
}
