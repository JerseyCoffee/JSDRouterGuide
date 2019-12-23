//
//  UIViewController+JSDTool.m
//  JSDRouterGuide
//
//  Created by Jersey on 13/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "UIViewController+JSDTool.h"


@implementation UIViewController (JSDTool)

+ (UIViewController *)jsd_rootViewController {
    
    return [UIApplication sharedApplication].delegate.window.rootViewController;
}

+ (UIViewController *)jsd_findVisibleViewController {
    
    UIViewController* currentViewController = [self jsd_rootViewController];

    BOOL runLoopFind = YES;
    while (runLoopFind) {
        if (currentViewController.presentedViewController) {
            currentViewController = currentViewController.presentedViewController;
        } else {
            if ([currentViewController isKindOfClass:[UINavigationController class]]) {
                currentViewController = ((UINavigationController *)currentViewController).visibleViewController;
            } else if ([currentViewController isKindOfClass:[UITabBarController class]]) {
                currentViewController = ((UITabBarController* )currentViewController).selectedViewController;
            } else {
                break;
            }
        }
    }
    
    return currentViewController;
}

@end
