#import "LiveStreamerPlugin.h"
#if __has_include(<live_streamer/live_streamer-Swift.h>)
#import <live_streamer/live_streamer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "live_streamer-Swift.h"
#endif

@implementation LiveStreamerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLiveStreamerPlugin registerWithRegistrar:registrar];
}
@end
