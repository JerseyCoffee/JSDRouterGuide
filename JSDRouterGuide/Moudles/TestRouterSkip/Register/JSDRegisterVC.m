//
//  JSDRegisterVC.m
//  JSDRouterGuide
//
//  Created by Jersey on 12/12/2019.
//  Copyright © 2019 Jersey. All rights reserved.
//

#import "JSDRegisterVC.h"

@interface JSDRegisterVC ()

@property(nonatomic, strong) UIStackView *stackView;
@property(nonatomic, strong) UIButton *gobackButton;
@property(nonatomic, strong) UIButton *gobackIndexButton;
@property(nonatomic, strong) UIButton *gobackPageButton;
@property(nonatomic, strong) UIButton *gobackPageOffsetButton;

@end

@implementation JSDRegisterVC

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
    
    self.navigationItem.title = @"注册: [测试OpenURL:Back]";
}

- (void)setupView {
    
    [self.view addSubview:self.stackView];
    [self.stackView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.left.mas_equalTo(15);
        make.trailing.mas_equalTo(-15);
    }];
    
    [self.stackView addArrangedSubview:self.gobackButton];
    [self.stackView addArrangedSubview:self.gobackIndexButton];
    [self.stackView addArrangedSubview:self.gobackPageButton];
    [self.stackView addArrangedSubview:self.gobackPageOffsetButton];
}

- (void)reloadingView {
    
    
}

#pragma mark - 3 Request Data

- (void)setupData {
    
    
}

#pragma mark - 4 UITableViewDataSource and UITableViewDelegate
#pragma mark - 5 Event Response

- (void)onTouchGoback:(UIButton *)sender {
    
    [JSDVCRouter openURL:kJSDVCRouteSegueBack];
}

- (void)onTouchGobackIndex:(UIButton *)sender {
    
    [JSDVCRouter openURL:kJSDVCRouteSegueBack parameters:@{kJSDVCRouteBackIndex: @(2)}];
}

- (void)onTouchGobackPage:(UIButton *)sender {
    
    [JSDVCRouter openURL:kJSDVCRouteSegueBack parameters:@{kJSDVCRouteBackPage: @"JSDHomeVC"}];
}

- (void)onTouchGobackPageOffset:(UIButton *)sender {
    
    [JSDVCRouter openURL:kJSDVCRouteSegueBack parameters:@{kJSDVCRouteBackPage: @"JSDLoginVC", kJSDVCRouteBackPageOffset:@(1)}];
}

- (void)setupAnalyticalData {
    
    
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

- (UIButton *)gobackButton {
    
    if (!_gobackButton) {
        _gobackButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_gobackButton setTitle:@"goback,返回上一个页面" forState:UIControlStateNormal];
        [_gobackButton addTarget:self action:@selector(onTouchGoback:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _gobackButton;
}

- (UIButton *)gobackIndexButton {
    
    if (!_gobackIndexButton) {
        _gobackIndexButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_gobackIndexButton setTitle:@"gobackIndex,返回指定索引页" forState:UIControlStateNormal];
        [_gobackIndexButton addTarget:self action:@selector(onTouchGobackIndex:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _gobackIndexButton;
}

- (UIButton *)gobackPageButton {
    
    if (!_gobackPageButton) {
        _gobackPageButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_gobackPageButton setTitle:@"goback,返回指定的页面" forState:UIControlStateNormal];
        [_gobackPageButton addTarget:self action:@selector(onTouchGobackPage:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _gobackPageButton;
}

- (UIButton *)gobackPageOffsetButton {
    
    if (!_gobackPageOffsetButton) {
        _gobackPageOffsetButton = [UIButton buttonWithType:UIButtonTypeSystem];
        [_gobackPageOffsetButton setTitle:@"goback,返回指定的页面并进行偏移" forState:UIControlStateNormal];
        [_gobackPageOffsetButton addTarget:self action:@selector(onTouchGobackPageOffset:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _gobackPageOffsetButton;
}

@end

