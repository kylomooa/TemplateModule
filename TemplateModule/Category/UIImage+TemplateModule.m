//
//  UIImage+TemplateModule.m
//  TemplateModule
//
//  Created by maoqiang on 2020/3/30.
//  Copyright © 2020 maoqiang. All rights reserved.
//

#import "UIImage+TemplateModule.h"


@implementation UIImage (TemplateModule)
+ (UIImage *)TemplateModuleImageNamed:(NSString *)name{
    
    NSString *bundlePath = [[NSBundle bundleForClass:NSClassFromString(@"UIImage+TemplateModule")] pathForResource:@"TemplateModuleBundle" ofType:@"bundle"];
    NSBundle *currentBundle = [NSBundle bundleWithPath:bundlePath];
 
    return [UIImage imageNamed:name inBundle:currentBundle compatibleWithTraitCollection:UIScreen.mainScreen.traitCollection];
}
@end
