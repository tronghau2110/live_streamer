import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'live_streamer_platform_interface.dart';

/// An implementation of [LiveStreamerPlatform] that uses method channels.
class MethodChannelLiveStreamer extends LiveStreamerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('live_streamer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
