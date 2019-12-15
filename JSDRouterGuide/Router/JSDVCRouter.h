//
//  JSDVCRouter.h
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <JLRoutes/JLRoutes.h>
#import "JSDVCRouterConfig.h"
#import "UIViewController+JSDTool.h"
extern BOOL userIsLogin;
NS_ASSUME_NONNULL_BEGIN

@interface JSDVCRouter : NSObject

+ (BOOL)openURL:(NSString *)url;
+ (BOOL)openURL:(NSString *)url parameters:(NSDictionary *)parameters;

+ (void)addRoute:(NSString* )route handler:(BOOL (^)(NSDictionary *parameters))handlerBlock;

@end

NS_ASSUME_NONNULL_END
