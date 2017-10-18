//
//  ZFWelcomeViewController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/10/18.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFWelcomeViewController.h"
#import "ZFWelcomeView.h"

#define ZFWelcomePageNumber 4

@interface ZFWelcomeViewController ()

@end

@implementation ZFWelcomeViewController

#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setting];
    [self initUI];

}

#pragma mark - 设置
- (void)setting {
    
}

#pragma mark - 初始化自定义视图
- (void)initUI {
    
    ZFWelcomeView *welcomeView = [[ZFWelcomeView alloc] initWithFrame:self.view.bounds];
    welcomeView.imageNamesArr = [self loadImageName];;
    [self.view addSubview:welcomeView];
    
}

#pragma mark - 加载图片
- (NSArray *)loadImageName {
    NSMutableArray *arrM = [NSMutableArray array];
    for (NSInteger i = 1; i <= ZFWelcomePageNumber; i++) {
        NSString *imageName = [NSString stringWithFormat:@"Z0%zd.png",i];
        if (imageName) [arrM addObject:imageName];
    }
    return arrM.copy;
}

#pragma mark -
#pragma mark -

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
