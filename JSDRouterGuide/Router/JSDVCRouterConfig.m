//
//  JSDVCRouterConfig.m
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "JSDVCRouterConfig.h"

NSString* const kJSDVCRouteSegue = @"JSDVCRouteSegue";
NSString* const kJSDVCRouteAnimated = @"JSDVCRouteAnimated";
NSString* const kJSDVCRouteBackIndex = @"JSDVCRouteBackIndex";
NSString* const kJSDVCRouteBackPage = @"JSDVCRouteBackPage";
NSString* const kJSDVCRouteBackPageOffset = @"JSDVCRouteBackPageOffset";
NSString* const kJSDVCRouteFromOutside = @"JSDVCRouteFromOutside";
NSString* const kJSDVCRouteNeedLogin = @"JSDVCRouteNeedLogin";
NSString* const kJSDVCRouteSegueNeedNavigation = @"JSDVCRouteNeedNavigation";

NSString* const kJSDVCRouteIndexRoot = @"root";
NSString* const kJSDVCRouteSeguePush = @"push";
NSString* const kJSDVCRouteSegueModal = @"modal";
NSString* const kJSDVCRouteSegueBack = @"/back";

NSString* const kJSDVCRouteClassName = @"class";
NSString* const kJSDVCRouteClassTitle = @"title";
NSString* const kJSDVCRouteClassFlags = @"flags";
NSString* const kJSDVCRouteClassNeedLogin = @"needLogin";

NSString* const JSDVCRouteHomeTab = @"/rootTab/0";
NSString* const JSDVCRouteCafeTab = @"/rootTab/1";
NSString* const JSDVCRouteCoffeeTab = @"/rootTab/2";
NSString* const JSDVCRouteMyCenterTab = @"/rootTab/3";

//App 内相关控制器
NSString* const JSDVCRouteWebview = @"/webView";
NSString* const JSDVCRouteLogin = @"/login";
NSString* const JSDVCRouteRegister = @"/register";
NSString* const JSDVCRouteAppear = @"/home/Appear";
NSString* const JSDVCRouteAppearNotNeedLogin = @"/home/AppearNotNeedLogin";

@implementation JSDVCRouterConfig

+ (NSDictionary *)configMapInfo {
    
    return @{
        JSDVCRouteWebview: @{kJSDVCRouteClassName: @"JSDWebViewVC",
                             kJSDVCRouteClassTitle: @"WebView",
                             kJSDVCRouteClassFlags: @"",
                             kJSDVCRouteClassNeedLogin: @"",
            
        },
        JSDVCRouteLogin: @{kJSDVCRouteClassName: @"JSDLoginVC",
                             kJSDVCRouteClassTitle: @"登录",
                             kJSDVCRouteClassFlags: @"",
                             kJSDVCRouteClassNeedLogin: @"",
            
        },
        JSDVCRouteRegister: @{kJSDVCRouteClassName: @"JSDRegisterVC",
                              kJSDVCRouteClassTitle: @"注册",
                              kJSDVCRouteClassFlags: @"",
                              kJSDVCRouteClassNeedLogin: @"",
                              
            
        },
        JSDVCRouteAppear: @{kJSDVCRouteClassName: @"JSDAppearVC",
                              kJSDVCRouteClassTitle: @"测试OpenRouter:",
                              kJSDVCRouteClassFlags: @"",
                              kJSDVCRouteClassNeedLogin: @"1",
                              
            
        },
        JSDVCRouteAppearNotNeedLogin: @{kJSDVCRouteClassName: @"JSDAppearNotNeedLogInVC",
                              kJSDVCRouteClassTitle: @"测试OpenRouterNotNeedLogin:",
                              kJSDVCRouteClassFlags: @"",
                              kJSDVCRouteClassNeedLogin: @"",
                              
            
        },
    };
}

@end
