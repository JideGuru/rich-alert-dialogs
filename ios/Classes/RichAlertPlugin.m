#import "RichAlertPlugin.h"
#import <rich_alert/rich_alert-Swift.h>

@implementation RichAlertPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftRichAlertPlugin registerWithRegistrar:registrar];
}
@end
