//
//  JSDRootTabBarController.m
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "JSDRootTabBarController.h"
#import "JSDCoffeeVC.h"
#import "JSDLoginVC.h"
#import "JSDCafeVC.h"
#import "JSDMyCenterVC.h"
#import "JSDHomeVC.h"
#import "JSDBaseNavigationController.h"

@interface JSDRootTabBarController ()

@end

@implementation JSDRootTabBarController

- (instancetype)init {
    
    if (self = [super init]) {
        
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupVC];
    
}

- (void)setupVC {
    
    NSArray* vcArray = @[@"JSDHomeVC",@"JSDCafeVC",@"JSDCoffeeVC",@"JSDMyCenterVC"];
    NSArray* titleArray = @[@"Home",@"Cafe",@"Coffee",@"My"];
    NSMutableArray* tempArray = NSMutableArray.new;
    
    for (NSInteger i = 0; i < vcArray.count; i++) {
        UIViewController* vc = [NSClassFromString(vcArray[i]) alloc];
        UINavigationController* navigationVC = [[JSDBaseNavigationController alloc] initWithRootViewController:vc];
        vc.navigationItem.title = navigationVC.tabBarItem.title = titleArray[i];
        [tempArray addObject:navigationVC];
        
    }
    [self setViewControllers:tempArray.copy];
    
    NSArray* imageArray = @[@"tab_home",@"tab_discover",@"tab_coffee",@"tab_me"];
    NSArray* selectedImageArray = @[@"tab_home_pre",@"tab_discover_pre",@"tab_coffee_pre",@"tab_me_pre"];
    for (int i=0; i < self.tabBar.items.count; i++) {
        UITabBarItem *tabBarItem = [self.tabBar.items objectAtIndex:i];
        tabBarItem.image = [UIImage imageNamed:imageArray[i]];
        tabBarItem.selectedImage = [UIImage imageNamed:selectedImageArray[i]];
    }
}


@end
