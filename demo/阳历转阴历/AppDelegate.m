//
//  AppDelegate.m
//  阳历转阴历
//
//  Created by 孙云飞 on 2016/11/3.
//  Copyright © 2016年 孙云飞. All rights reserved.
//

#import "AppDelegate.h"
#import "IQKeyboardManager.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    manager.enable = YES;
    manager.shouldResignOnTouchOutside = YES;
    manager.shouldToolbarUsesTextFieldTintColor = YES;
    manager.enableAutoToolbar = YES;
    return YES;
}

@end
