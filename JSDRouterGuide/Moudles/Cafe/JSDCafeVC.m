//
//  JSDCafeVC.m
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "JSDCafeVC.h"

@interface JSDCafeVC ()

@property(nonatomic, strong) NSString *routerName;

@end

@implementation JSDCafeVC

#pragma mark - View Controller Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //1.设置导航栏
    [self setupNavBar];
    //2.设置view
    [self setupView];
    //3.请求数据
    [self setupData];
    //5.解析数据
    [self setupAnalyticalData];
    //6.设置通知
    [self setupNotification];
    //7.private
    [self setupPrivateMethod];
}

#pragma mark - 2 SettingView and Style

-(void)setupNavBar {
    
}

- (void)setupView {
    
    self.routerName ? NSLog(@"%@", self.routerName): NULL;
}

- (void)reloadingView {
    
    
}

#pragma mark - 3 Request Data

- (void)setupData {
    
    
}

#pragma mark - 4 UITableViewDataSource and UITableViewDelegate
#pragma mark - 5 Event Response


- (void)setupAnalyticalData {
    
    
}
#pragma mark - 6 Private Methods

- (void)setupNotification {
    
}

- (void)setupPrivateMethod {
    
    
}

#pragma mark - 7 GET & SET




/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end

