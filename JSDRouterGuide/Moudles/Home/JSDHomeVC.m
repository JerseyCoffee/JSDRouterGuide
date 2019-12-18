//
//  JSDHomeVC.m
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "JSDHomeVC.h"

@interface JSDHomeVC ()

@property(nonatomic, strong) UIStackView *stackView;
@property(nonatomic, strong) UILabel *loginStatuLabel;
@property(nonatomic, strong) UISwitch *loginSwitch;

@end

@implementation JSDHomeVC
{
    NSArray* _titleArray;
}

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

- (void)viewWillAppear:(BOOL)animated {
    
    self.loginSwitch.on = userIsLogin;
    if (userIsLogin) {
        self.loginStatuLabel.text = @"当前用户状态:已登录";
    } else {
        self.loginStatuLabel.text = @"当前用户状态:未登录";
    }
    
    [super viewWillAppear:animated];
}

#pragma mark - 2 SettingView and Style

-(void)setupNavBar {
    
}

- (void)setupView {
    
    [self.view addSubview:self.loginStatuLabel];
    [self.view addSubview:self.loginSwitch];
    //left
    [self.loginStatuLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(-15);
        make.top.mas_equalTo(20);
    }];
    
    [self.loginSwitch mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.mas_equalTo(self.loginStatuLabel);
        make.left.mas_equalTo(self.loginStatuLabel.mas_right).mas_offset(20);
    }];
    
    //push, modal,  pop, pop index, dismiss, 传参, callback, newNavigation;
    [self.view addSubview:self.stackView];
    [self.stackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.loginStatuLabel.mas_bottom).mas_offset(20);
        make.left.mas_equalTo(15);
        make.trailing.mas_equalTo(-15);
    }];
    
    _titleArray = @[@"Push 到 JSDAppearVC",@"Modal 到 JSDAppearVC",@"切换 TabBar Index 到 Cafe",@"切换 TabBar Index 到 Coffee",@"Push 到 JSDAppearVC 带参数 name",@"Modal 到 JSDAppearVC 带参数 name",@"Modal 并且让呈现的VC带导航栏",@"callback + 参数", @"Push 到 JSDAppearVC 不要求登陆页", @"Modal 到 JSDAppearVC 不要求登陆页",@"Modal 到 JSDAppearVC 不要求登陆页, 并指定其导航栏"];
    for (NSString* title in _titleArray) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [btn setTitle:title forState:UIControlStateNormal];
        btn.tag = [_titleArray indexOfObject:title];
        [btn addTarget:self action:@selector(onTouchRoute:) forControlEvents:UIControlEventTouchUpInside];
        btn.titleLabel.numberOfLines = 0;
        btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.stackView addArrangedSubview:btn];
    }
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

- (void)onTouchRoute:(UIButton *)sender {
    //Push",@"Modal",@"Pop",@"Dismiss",@"Push 带参数",@"Modal 带参数",@"Modal 并且让呈现的VC带导航栏",@"callback"
    switch (sender.tag) {
        case 0:{ //Push
            [JSDVCRouter openURL:JSDVCRouteAppear];
        }
            break;
        case 1:{ //Modal
            [JSDVCRouter openURL:JSDVCRouteAppear parameters:@{kJSDVCRouteSegue: kJSDVCRouteSegueModal}];
        }
            break;
        case 2:{ //切换 TabBar Index 到 Cafe
            [JSDVCRouter openURL:JSDVCRouteCafeTab parameters:@{@"routerName": @"JSDRouter"}];
        }
            break;
        case 3:{ //切换 TabBar Index 到 Coffee
            [JSDVCRouter openURL:JSDVCRouteCoffeeTab parameters:@{@"router": @"JLRouter"}];
        }
            break;
        case 4:{ //Push 带参数
            [JSDVCRouter openURL:JSDVCRouteAppear parameters:@{@"name": @"Jersey"}];
        }
            break;
        case 5:{ //Modal 带参数
            [JSDVCRouter openURL:JSDVCRouteAppear parameters:@{kJSDVCRouteSegue: kJSDVCRouteSegueModal,@"name": @"Jersey"}];
        }
            break;
        case 6:{ //Modal 并且让呈现的VC带导航栏
            [JSDVCRouter openURL:JSDVCRouteAppear parameters:@{kJSDVCRouteSegue: kJSDVCRouteSegueModal, kJSDVCRouteSegueNeedNavigation: @(YES)}];
        }
            break;
        case 7:{ //callback + 参数
            void (^callback)(void) = ^{
                NSLog(@"执行回调函数");
            };
            void (^callback2)(NSString *) = ^(NSString *name) {
                NSLog(@"执行回调函数2, 我是%@", name);
            };
            [JSDVCRouter openURL:JSDVCRouteAppear parameters:@{@"name": @"Jersey", @"callback": callback, @"callback2": callback2}];
        }
            break;
        case 8:{ //Push 到 JSDAppearVC 不要求登陆页
            [JSDVCRouter openURL:JSDVCRouteAppearNotNeedLogin parameters:@{kJSDVCRouteSegue: kJSDVCRouteSeguePush}];
        }
            break;
        case 9:{ //Modal 到 JSDAppearVC 不要求登陆页
            [JSDVCRouter openURL:JSDVCRouteAppearNotNeedLogin parameters:@{kJSDVCRouteSegue: kJSDVCRouteSegueModal}];
        }
            break;
        case 10:{ //Modal 到 JSDAppearVC 不要求登陆页, 并指定其导航栏
            [JSDVCRouter openURL:JSDVCRouteAppearNotNeedLogin parameters:@{kJSDVCRouteSegue: kJSDVCRouteSegueModal, kJSDVCRouteSegueNeedNavigation: @(YES)}];
        }
        default:
            break;
    }
}

- (void)onTouchLogin:(UISwitch *)sender {
    
    userIsLogin = sender.on;
    if (userIsLogin) {
        self.loginStatuLabel.text = @"当前用户状态:已登录";
    } else {
        self.loginStatuLabel.text = @"当前用户状态:未登录";
    }
}

#pragma mark - 6 Private Methods

- (void)setupNotification {
    
}

- (void)setupPrivateMethod {
    
    
}

#pragma mark - 7 GET & SET

- (UIStackView *)stackView {
    
    if (!_stackView) {
        _stackView = [[UIStackView alloc] init];
        [_stackView setAxis:UILayoutConstraintAxisVertical];
        [_stackView setSpacing:3];
    }
    return _stackView;
}

- (UILabel *)loginStatuLabel {
    
    if (!_loginStatuLabel) {
        _loginStatuLabel = [[UILabel alloc] init];
        _loginStatuLabel.text = @"当前用户状态:未登录";
    }
    return _loginStatuLabel;
}

- (UISwitch *)loginSwitch {
    
    if (!_loginSwitch) {
        _loginSwitch = [[UISwitch alloc] init];
        _loginSwitch.on = NO;
        [_loginSwitch addTarget:self action:@selector(onTouchLogin:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginSwitch;
}

@end



