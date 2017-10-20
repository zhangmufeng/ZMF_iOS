//
//  ZFFunctionsViewController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/10/18.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFFunctionsViewController.h"
#import "ZFFuncDetailViewController.h"

@interface ZFFunctionsViewController ()

@end

@implementation ZFFunctionsViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.barTintColor = [UIColor blackColor];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithHexString:@"#ebebeb"];
}
- (void)viewDidLoad {
    [super viewDidLoad];

    [self.view setBackgroundColor:[UIColor blackColor]];
    
    self.navigationController.navigationBar.translucent = NO;

    [self initUI];
}

#pragma mark - 初始化
- (void)initUI {
    
//    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
//    self.scrollView.contentSize = CGSizeMake(CGRectGetWidth(self.view.bounds), 2 * CGRectGetHeight(self.view.bounds));
    //    [self.view addSubview:self.scrollView];
    [self.navigationController.navigationBar setTitleTextAttributes: @{ NSFontAttributeName:[UIFont systemFontOfSize:17], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.layer.cornerRadius = 40;
    imageView.clipsToBounds = YES;
    imageView.layer.borderWidth = 10;
    imageView.layer.borderColor = [UIColor cyanColor].CGColor;
    [self.view addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.height.mas_equalTo(120);
    }];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(goToNext)];
    [self.view addGestureRecognizer:tap];
}
- (void)goToNext {
    ZFFuncDetailViewController *funcDetailViewController = [ZFFuncDetailViewController new];
    funcDetailViewController.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:funcDetailViewController animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
//#import "ViewController.h"
//
//@interface ViewController ()
//{
//    UIView *_circleView;
//    
//}
//
//@end
//
//@implementation ViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    [self setupUI];
//}
//
///// 开始咻一咻动画
//- (void)startXiuxiu:(UIButton *)button {
//    
//    // 1. 修改圆形视图背景颜色 61    107    147
//    _circleView.backgroundColor = [UIColor colorWithRed:61 / 255.0 green:107 / 255.0 blue:147 / 255.0 alpha:1.0];
//    
//    // 2. 禁用按钮
//    button.enabled = NO;
//    
//    CGFloat delay = 1.0;
//    CGFloat scale = 8;
//    NSInteger count = 20;
//    
//    // 3. 循环添加多个视图动画
//    for (NSInteger i = 0; i < count; i++) {
//        // 3. 创建一个圆形视图，添加到视图的底层
//        UIView *animationView = [self circleView];
//        animationView.backgroundColor = _circleView.backgroundColor;
//        [self.view insertSubview:animationView atIndex:0];
//        
//        [UIView
//         animateWithDuration:5
//         delay:i * delay
//         options:UIViewAnimationOptionCurveLinear
//         animations:^{
//             animationView.transform = CGAffineTransformMakeScale(scale, scale);
//             animationView.backgroundColor = self.view.backgroundColor;
//             animationView.alpha = 0;
//         } completion:^(BOOL finished) {
//             [animationView removeFromSuperview];
//             
//             if (i == count - 1) {
//                 button.enabled = YES;
//             }
//         }];
//    }
//}
//
//#pragma mark - 准备界面
//- (void)setupUI {
//    // 1. 设置背景颜色 35    39    63
//    self.view.backgroundColor = [UIColor colorWithRed:35 / 255.0 green:39 / 255.0 blue:63 / 255.0 alpha:1.0];
//    
//    // 2. 添加按钮
//    UIButton *button = [[UIButton alloc] init];
//    
//    [button setImage:[UIImage imageNamed:@"alipay_msp_op_success"] forState:UIControlStateNormal];
//    
//    // 注意：先调整大小，再设置中心点
//    [button sizeToFit];
//    button.center = self.view.center;
//    
//    [self.view addSubview:button];
//    
//    // 3. 添加圆形视图
//    _circleView = [self circleView];
//    [self.view insertSubview:_circleView belowSubview:button];
//    
//    // 4. 添加监听方法
//    [button addTarget:self action:@selector(startXiuxiu:) forControlEvents:UIControlEventTouchUpInside];
//}
//
//- (UIView *)circleView {
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
//    view.center = self.view.center;
//    
//    // 设置背景颜色 52     143    242
//    view.backgroundColor = [UIColor colorWithRed:52 / 255.0 green:143 / 255.0 blue:242 / 255.0 alpha:1.0];
//    
//    // 设置视图圆角
//    view.layer.cornerRadius = 50.0;
//    view.layer.masksToBounds = YES;
//    
//    return view;
//}

