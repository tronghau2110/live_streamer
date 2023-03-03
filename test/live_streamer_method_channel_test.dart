import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:live_streamer/live_streamer_method_channel.dart';

void main() {
  MethodChannelLiveStreamer platform = MethodChannelLiveStreamer();
  const MethodChannel channel = MethodChannel('live_streamer');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
