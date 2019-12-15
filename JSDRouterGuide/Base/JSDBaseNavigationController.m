//
//  JSDBaseNavigationController.m
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "JSDBaseNavigationController.h"

@interface JSDBaseNavigationController ()

@end

@implementation JSDBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    NSInteger count = self.viewControllers.count;
    if (count > 0) {
        //push后隐藏tabBar
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
}

- (void)setViewControllers:(NSArray<UIViewController *> *)viewControllers animated:(BOOL)animated
{
    NSInteger count = viewControllers.count;
    if (count > 1) {
        //push后隐藏tabBar
        viewControllers.lastObject.hidesBottomBarWhenPushed = YES;
    }
    [super setViewControllers:viewControllers animated:animated];
}

@end
