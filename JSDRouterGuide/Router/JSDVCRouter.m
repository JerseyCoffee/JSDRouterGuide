//
//  JSDVCRouter.m
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "JSDVCRouter.h"

BOOL userIsLogin = NO;

#define JSDRouterURL(string) [NSURL URLWithString:string]

@implementation JSDVCRouter

+ (BOOL)openURL:(NSString *)url {
    
    return [self routeURL:url parameters:nil];
}

+ (BOOL)openURL:(NSString *)url parameters:(NSDictionary *)parameters {
    
   return [self routeURL:url parameters:parameters];
}

+ (void)addRoute:(NSString *)route handler:(BOOL (^)(NSDictionary * _Nonnull parameters))handlerBlock {
    
    [JLRoutes addRoute:route handler:handlerBlock];
}

#pragma mark - mark JLRouter

+ (BOOL)routeURL:(NSString*)url parameters:(NSDictionary *)parameters{
    
    return [JLRoutes routeURL:JSDRouterURL(url) withParameters:parameters];
}

@end
