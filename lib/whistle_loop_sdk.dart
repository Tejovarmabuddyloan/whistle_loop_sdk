
import 'whistle_loop_sdk_platform_interface.dart';

class WhistleLoopSdk {
  Future<String?> getPlatformVersion() {
    return WhistleLoopSdkPlatform.instance.getPlatformVersion();
  }
  Future<String?> initDeviceId() {
    return WhistleLoopSdkPlatform.instance.initDeviceId();
  }

  Future<String?> getpac() {
    return WhistleLoopSdkPlatform.instance.getpac();
  }

  Future<String?> getIP() {
    return WhistleLoopSdkPlatform.instance.getIP();
  }

  Future<String?> getPlatform() {
    return WhistleLoopSdkPlatform.instance.getPlatform();
  }

  Future<String?> getDeviceType() {
    return WhistleLoopSdkPlatform.instance.getDeviceType();
  }


  Future<String?> getTime() {
    return WhistleLoopSdkPlatform.instance.getTime();
  }
  Future<String?> getDate() {
    return WhistleLoopSdkPlatform.instance.getDate();
  }

  Future<String?> getConnectionType() {
    return WhistleLoopSdkPlatform.instance.getConnectionType();
  }
}
