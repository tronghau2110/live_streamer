import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'live_streamer_method_channel.dart';

abstract class LiveStreamerPlatform extends PlatformInterface {
  /// Constructs a LiveStreamerPlatform.
  LiveStreamerPlatform() : super(token: _token);

  static final Object _token = Object();

  static LiveStreamerPlatform _instance = MethodChannelLiveStreamer();

  /// The default instance of [LiveStreamerPlatform] to use.
  ///
  /// Defaults to [MethodChannelLiveStreamer].
  static LiveStreamerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LiveStreamerPlatform] when
  /// they register themselves.
  static set instance(LiveStreamerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
