
import 'live_streamer_platform_interface.dart';

class LiveStreamer {
  Future<String?> getPlatformVersion() {
    return LiveStreamerPlatform.instance.getPlatformVersion();
  }
}
