
import 'whistle_loop_sdk_platform_interface.dart';

class WhistleLoopSdk {
  Future<String?> getPlatformVersion() {
    return WhistleLoopSdkPlatform.instance.getPlatformVersion();
  }
}
