//
//  NSString+TemplateModule.m
//  TemplateModule
//
//  Created by maoqiang on 2020/3/30.
//  Copyright © 2020 maoqiang. All rights reserved.
//

#import "NSString+TemplateModule.h"


@implementation NSString (TemplateModule)
+ (NSString *)TemplateModuleLocalizedString:(NSString *)string{
    
    NSString *bundlePath = [[NSBundle bundleForClass:NSClassFromString(@"NSString+TemplateModule")] pathForResource:@"TemplateModuleBundle" ofType:@"bundle"];
    NSBundle *currentBundle = [NSBundle bundleWithPath:bundlePath];
    
   return [currentBundle localizedStringForKey:string value:nil table:nil];
}
@end
