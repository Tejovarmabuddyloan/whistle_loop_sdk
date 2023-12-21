import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:whistle_loop_sdk/whistle_loop_sdk.dart';
import 'package:timezone/data/latest.dart' as tz;



void whistleLoopEvents(String eventName) async {
  tz.initializeTimeZones();
  String? deviceId = await WhistleLoopSdk().initDeviceId();
  String? packageName = await WhistleLoopSdk().getpac();
  String? networkType = await WhistleLoopSdk().getConnectionType();
  String? ip = await WhistleLoopSdk().getIP();
  String? userAgent = await WhistleLoopSdk().getDeviceType();
  String? clickedTime = await WhistleLoopSdk().getTime();
  String? clickedDate = await WhistleLoopSdk().getDate();
  String? platformOs = await WhistleLoopSdk().getPlatform();
  String? timeZone = await WhistleLoopSdk().getTimezone();

  var request = http.Request(
      'POST',
      Uri.parse(
          'http://13.232.216.75/whistle-follow-utils/sdk_test.php?device_id=$deviceId&event_name=$eventName&package_name=$packageName&network_type=$networkType&ip=$ip&user_agent=$userAgent&clicked_time=$clickedTime&clicked_date=$clickedDate&platfom_os=$platformOs&time_zone=$timeZone'));
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    debugPrint("sfhdsuyfgvudsgfusdgvf $request");
    debugPrint(await response.stream.bytesToString());
  } else {
    debugPrint(response.reasonPhrase);
  }
}
