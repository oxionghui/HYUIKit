//
//  NSBundle+UIKit.m
//  Pods
//
//  Created by ios on 2017/9/11.
//
//

#import "NSBundle+HyUIKit.h"

@implementation NSBundle (HyUIKit)

+ (NSBundle *)hyUIKitBundle {
    NSBundle *libBundle = [NSBundle bundleForClass:NSClassFromString(@"HyDemoView")];
    NSLog(@"libBundle-%@", libBundle);
    NSString *bundlePath = [libBundle pathForResource:@"HYUIKit" ofType:@"bundle"];
    NSLog(@"bundlePath-%@", bundlePath);
    NSBundle *bundle = [NSBundle bundleWithPath:bundlePath];
    return bundle;
}
@end
