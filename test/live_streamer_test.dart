import 'package:flutter_test/flutter_test.dart';
import 'package:live_streamer/live_streamer.dart';
import 'package:live_streamer/live_streamer_platform_interface.dart';
import 'package:live_streamer/live_streamer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLiveStreamerPlatform
    with MockPlatformInterfaceMixin
    implements LiveStreamerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LiveStreamerPlatform initialPlatform = LiveStreamerPlatform.instance;

  test('$MethodChannelLiveStreamer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLiveStreamer>());
  });

  test('getPlatformVersion', () async {
    LiveStreamer liveStreamerPlugin = LiveStreamer();
    MockLiveStreamerPlatform fakePlatform = MockLiveStreamerPlatform();
    LiveStreamerPlatform.instance = fakePlatform;

    expect(await liveStreamerPlugin.getPlatformVersion(), '42');
  });
}
