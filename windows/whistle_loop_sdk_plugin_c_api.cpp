#include "include/whistle_loop_sdk/whistle_loop_sdk_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "whistle_loop_sdk_plugin.h"

void WhistleLoopSdkPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  whistle_loop_sdk::WhistleLoopSdkPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
