import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'whistle_loop_sdk_platform_interface.dart';

/// An implementation of [WhistleLoopSdkPlatform] that uses method channels.
class MethodChannelWhistleLoopSdk extends WhistleLoopSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('whistle_loop_sdk');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
