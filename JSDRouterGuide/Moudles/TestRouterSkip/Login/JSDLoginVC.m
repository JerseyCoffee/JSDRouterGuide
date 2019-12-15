//
//  JSDLoginVC.m
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "JSDLoginVC.h"

@interface JSDLoginVC ()

@property(nonatomic, strong) UILabel *guideLabel;
@property(nonatomic, strong) UIButton *loginButton;
@property(nonatomic, strong) UIButton *registerButton;
@property(nonatomic, strong) UIButton *modalRegisterButton;
@property(nonatomic, strong) UIButton *gobackButton;
@property(nonatomic, strong) UIStackView *stackView;

@end

@implementation JSDLoginVC

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
    
    self.navigationItem.title = @"登陆";
}

- (void)setupView {
    
    [self.view addSubview:self.stackView];
    [self.stackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_offset(100);
        make.left.mas_offset(30);
        make.right.mas_offset(-30);
    }];
    
    [self.stackView addArrangedSubview:self.guideLabel];
    [self.stackView addArrangedSubview:self.loginButton];
    [self.stackView addArrangedSubview:self.registerButton];
    [self.stackView addArrangedSubview:self.modalRegisterButton];
    [self.stackView addArrangedSubview:self.gobackButton];
}

- (void)reloadingView {
    
    
}

#pragma mark - 3 Request Data

- (void)setupData {
    
    
}

#pragma mark - 4 UITableViewDataSource and UITableViewDelegate
#pragma mark - 5 Event Response

- (void)onTouchLogin:(UIButton* )sender {
    
    userIsLogin = YES;
}

- (void)onTouchPushRegister:(UIButton *)sender {
    
    [JSDVCRouter openURL:JSDVCRouteRegister];
}

- (void)onTouchModalRegister:(UIButton *)sender {
    
    [JSDVCRouter openURL:JSDVCRouteRegister parameters:@{kJSDVCRouteSegue: kJSDVCRouteSegueModal}];
}

- (void)onTouchGoback:(UIButton *)sender {
    
    [JSDVCRouter openURL:kJSDVCRouteBackIndex];
}

- (void)setupAnalyticalData {
    
    
}
#pragma mark - 6 Private Methods

- (void)setupNotification {
    
}

- (void)setupPrivateMethod {
    
    
}

#pragma mark - 7 GET & SET

- (UILabel *)guideLabel {
    
    if (!_guideLabel) {
        _guideLabel = [[UILabel alloc] init];
        _guideLabel.text = @"由于当前状态为未登录状态, 我们手动配置 RouteMap 映射 kJSDVCRouteClassNeedLogin 值为 1 时,会在跳转过程拦截自动跳转到登陆页";
        _guideLabel.numberOfLines = 0;
    }
    return _guideLabel;
}

- (UIButton *)loginButton {
    
    if (!_loginButton) {
        _loginButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_loginButton setTitle:@"点击模拟登陆" forState:UIControlStateNormal];
        [_loginButton addTarget:self action:@selector(onTouchLogin:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginButton;
}

- (UIButton *)registerButton {
    
    if (!_registerButton) {
        _registerButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_registerButton setTitle:@"Push到注册页" forState:UIControlStateNormal];
        [_registerButton addTarget:self action:@selector(onTouchPushRegister:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _registerButton;
}

- (UIButton *)modalRegisterButton {
    
    if (!_modalRegisterButton) {
        _modalRegisterButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_modalRegisterButton setTitle:@"Modal到注册页" forState:UIControlStateNormal];
        [_modalRegisterButton addTarget:self action:@selector(onTouchModalRegister:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _modalRegisterButton;
}

- (UIButton *)gobackButton {
    
    if (!_gobackButton) {
        _gobackButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_gobackButton setTitle:@"OpenRouer:/back" forState:UIControlStateNormal];
        [_gobackButton addTarget:self action:@selector(onTouchGoback:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _gobackButton;
}

- (UIStackView *)stackView {
    
    if (!_stackView) {
        _stackView = [[UIStackView alloc] init];
        [_stackView setAxis:UILayoutConstraintAxisVertical];
        [_stackView setSpacing:3];
    }
    return _stackView;
}

@end

