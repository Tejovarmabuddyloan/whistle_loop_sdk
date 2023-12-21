import 'package:flutter_test/flutter_test.dart';
import 'package:whistle_loop_sdk/whistle_loop_sdk.dart';
import 'package:whistle_loop_sdk/whistle_loop_sdk_platform_interface.dart';
import 'package:whistle_loop_sdk/whistle_loop_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWhistleLoopSdkPlatform
    with MockPlatformInterfaceMixin
    implements WhistleLoopSdkPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getConnectionType() {
    // TODO: implement getConnectionType
    throw UnimplementedError();
  }

  @override
  Future<String> getDate() {
    // TODO: implement getDate
    throw UnimplementedError();
  }

  @override
  Future<String?> getDeviceType() {
    // TODO: implement getDeviceType
    throw UnimplementedError();
  }

  @override
  Future<String?> getIP() {
    // TODO: implement getIP
    throw UnimplementedError();
  }

  @override
  Future<String?> getPlatform() {
    // TODO: implement getPlatform
    throw UnimplementedError();
  }

  @override
  Future<String> getTime() {
    // TODO: implement getTime
    throw UnimplementedError();
  }

  @override
  Future<String?> getpac() {
    // TODO: implement getpac
    throw UnimplementedError();
  }

  @override
  Future<String?> initDeviceId() {
    // TODO: implement initDeviceId
    throw UnimplementedError();
  }

  @override
  Future<String?> getTimezone() {
    // TODO: implement getTimezone
    throw UnimplementedError();
  }
}

void main() {
  final WhistleLoopSdkPlatform initialPlatform = WhistleLoopSdkPlatform.instance;

  test('$MethodChannelWhistleLoopSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWhistleLoopSdk>());
  });

  test('getPlatformVersion', () async {
    WhistleLoopSdk whistleLoopSdkPlugin = WhistleLoopSdk();
    MockWhistleLoopSdkPlatform fakePlatform = MockWhistleLoopSdkPlatform();
    WhistleLoopSdkPlatform.instance = fakePlatform;

    expect(await whistleLoopSdkPlugin.getPlatformVersion(), '42');
  });
}
