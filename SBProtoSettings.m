//
//  SBProtoSettings.m
//  SBProtoSettings
//
//  Created by Doc Aiden on 3/13/18.
//  Copyright (c) 2018 ___ORGANIZATIONNAME___. All rights reserved.
//

// LibActivator by Ryan Petrich
// See https://github.com/rpetrich/libactivator
// #import "SBPrototypeController.h"
#import "SBProtoSettings.h"
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface SBPrototypeController : NSObject
+ (id)sharedInstance;
- (void)_showSettings;
@end


@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation SBProtoSettings
- (UIImage *)iconGlyph {
    return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
    return [UIColor blueColor];
}

- (BOOL)isSelected {
    return self.ezSecretSettings;
}

- (void)setSelected:(BOOL)selected {
    self.ezSecretSettings = selected;
    [super refreshState];
  [self exec_ezSecretSettings];
}

- (void)exec_ezSecretSettings {
[[%c(SBPrototypeController) sharedInstance] _showSettings];
}
@end
