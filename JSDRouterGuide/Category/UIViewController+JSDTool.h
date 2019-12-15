//
//  UIViewController+JSDTool.h
//  JSDRouterGuide
//
//  Created by Jersey on 13/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIViewController (JSDTool)

+ (UIViewController* )jsd_rootViewController;
+ (UIViewController* )jsd_findVisibleViewController;

@end

NS_ASSUME_NONNULL_END
