#ifndef FLUTTER_PLUGIN_WHISTLE_LOOP_SDK_PLUGIN_H_
#define FLUTTER_PLUGIN_WHISTLE_LOOP_SDK_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace whistle_loop_sdk {

class WhistleLoopSdkPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  WhistleLoopSdkPlugin();

  virtual ~WhistleLoopSdkPlugin();

  // Disallow copy and assign.
  WhistleLoopSdkPlugin(const WhistleLoopSdkPlugin&) = delete;
  WhistleLoopSdkPlugin& operator=(const WhistleLoopSdkPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace whistle_loop_sdk

#endif  // FLUTTER_PLUGIN_WHISTLE_LOOP_SDK_PLUGIN_H_
