//
//  UIImage+Search.m
//  Pods
//
//  Created by ios on 2017/9/11.
//
//

#import "UIImage+HyUIKit.h"
#import "NSBundle+HyUIKit.h"

@implementation UIImage (HyUIKit)

+ (UIImage *)uiKit_imageNamed:(NSString *)imageName {
    NSBundle *bundle = [NSBundle hyUIKitBundle];
    NSLog(@"uiKit_imageNamed bundle:%@", bundle);
    if (@available(iOS 8.0, *)) {
        UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
        
        return image;
    } else {
        return nil;
    };
}
@end
