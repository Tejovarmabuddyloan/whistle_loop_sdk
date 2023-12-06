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
