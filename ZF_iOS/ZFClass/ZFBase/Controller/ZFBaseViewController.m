//
//  ZFBaseViewController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/26.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFBaseViewController.h"


@interface ZFBaseViewController ()

@end

@implementation ZFBaseViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *backButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [backButton setImage:[UIImage imageNamed:@"返回"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(back) forControlEvents:(UIControlEventTouchUpInside)];
    backButton.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    backButton.frame = CGRectMake(0, 0, 25, 25);
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    
}
- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
