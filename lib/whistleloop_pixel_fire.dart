import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:whistle_loop_sdk/whistle_loop_sdk.dart';
void whistle_loop_events(String eventname) async{

  String? device_id = await WhistleLoopSdk().initDeviceId();
  String? package_name= await WhistleLoopSdk().getpac();
  String? network_type= await WhistleLoopSdk().getConnectionType();
  String? ip= await WhistleLoopSdk().getIP();
  String? user_agent= await WhistleLoopSdk().getPlatform();
  String? clicked_time= await WhistleLoopSdk().getTime();
  String? clicked_date= await WhistleLoopSdk().getDate();
  String? platform_os= await WhistleLoopSdk().getDeviceType();

  var request = http.Request('POST', Uri.parse('http://13.232.216.75/whistle-follow-utils/sdk_test.php?device_id=$device_id&event_name=$eventname&package_name=$package_name&network_type=$network_type&ip=$ip&user_agent=$user_agent&clicked_time=$clicked_time&clicked_date=$clicked_date&platfom_os=$platform_os'));
  http.StreamedResponse response = await request.send();
  if (response.statusCode == 200) {
    debugPrint("sfhdsuyfgvudsgfusdgvf");
    debugPrint(await response.stream.bytesToString());



  }
  else {
    debugPrint(response.reasonPhrase);
  }

}