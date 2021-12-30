#import "SpirobankPlugin.h"
#if __has_include(<spirobank/spirobank-Swift.h>)
#import <spirobank/spirobank-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "spirobank-Swift.h"
#endif

@implementation SpirobankPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSpirobankPlugin registerWithRegistrar:registrar];
}
@end
