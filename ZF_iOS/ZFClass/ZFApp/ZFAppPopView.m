//
//  ZFAppPopView.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/11/7.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFAppPopView.h"

@interface ZFAppPopView ()

@property (strong, nonatomic) UIView *__nonnull backgroundView;
@property (strong, nonatomic) UIActivityIndicatorView *__nonnull activityIndicatorView;
@property (strong, nonatomic) UILabel *__nullable titleLabel;
@property (strong, nonatomic) UIImageView *__nullable imageView;

@end

@implementation ZFAppPopView

+ (__kindof  ZFAppPopView * _Nonnull )sharedPopView {
    static ZFAppPopView *appPopView = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        appPopView = [[ZFAppPopView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    });
    return appPopView;
}

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        [self initUI];
    }
    return self;
    
}
- (void)initUI {
    
    UIView *backgroundView = [[UIView alloc] init];
    backgroundView.backgroundColor = [UIColor darkGrayColor];
    backgroundView.clipsToBounds = YES;
    backgroundView.layer.cornerRadius = 8;
    self.backgroundView = backgroundView;
    [self addSubview:backgroundView];
    [backgroundView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.height.mas_equalTo(120);
    }];
    
    UIActivityIndicatorView *activityIndicatorView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    self.activityIndicatorView = activityIndicatorView;
    [backgroundView addSubview:self.activityIndicatorView];
    [self.activityIndicatorView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundView);
        make.top.equalTo(self.backgroundView).offset(20);
        make.width.height.mas_equalTo(60);
    }];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"";
    titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel = titleLabel;
    [backgroundView addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.backgroundView);
        make.bottom.equalTo(self.backgroundView).offset(-20);
    }];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"对勾"];
    self.imageView = imageView;
    
}

+ (void)startPopViewWithController:(UIViewController *)viewController andTitle:(NSString *)title andImageName:(NSString *)imageName andPopViewStyle:(ZFPopViewStyle)style{
    
    ZFAppPopView *popView = [ZFAppPopView sharedPopView];
    
    if (title.length == 0 || title == nil) {
        [popView.activityIndicatorView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.center.equalTo(popView.backgroundView);
            make.width.height.mas_equalTo(60);
        }];
    } else {
        popView.titleLabel.text = title;
    }
    [popView.activityIndicatorView startAnimating];
    [viewController.view addSubview:popView];
    
}

+ (void)stopPopView {
    
}
@end
