//
//  ZFWelcomeView.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/10/18.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFWelcomeView.h"

@interface ZFWelcomeView () <UIScrollViewDelegate>

@property (strong, nonatomic) UIScrollView  *welcomeScrollView;
@property (strong, nonatomic) UIPageControl *pageControl;

@end
@implementation ZFWelcomeView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        [self initUI];
    }
    return self;
}
- (void)initUI {
    
    self.welcomeScrollView = [[UIScrollView alloc] initWithFrame:self.bounds];
//    self.welcomeScrollView.contentSize = CGSizeMake(self.imageNamesArr.count * CGRectGetWidth(self.bounds), CGRectGetHeight(self.bounds));
    self.welcomeScrollView.backgroundColor = [UIColor yellowColor];
//    self.welcomeScrollView.showsVerticalScrollIndicator = NO;
//    self.welcomeScrollView.showsHorizontalScrollIndicator = NO;
//    self.welcomeScrollView.alwaysBounceVertical = NO;
    self.welcomeScrollView.bounces = NO;
    self.welcomeScrollView.pagingEnabled = YES;
    self.welcomeScrollView.delegate = self;
    [self addSubview:self.welcomeScrollView];
    
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(0, self.welcomeScrollView.frame.size.height - 80, self.welcomeScrollView.frame.size.width, 20)];
//    self.pageControl.numberOfPages = self.imageNamesArr.count;
    self.pageControl.currentPage = 0;
    self.pageControl.hidden = NO;
    self.pageControl.enabled = NO;
    self.pageControl.pageIndicatorTintColor = [UIColor yellowColor];
    self.pageControl.currentPageIndicatorTintColor = [UIColor greenColor];
    [self.welcomeScrollView addSubview:self.pageControl];
    
}

- (void)setImageNamesArr:(NSArray<NSString *> *)imageNamesArr {
    
    _imageNamesArr = imageNamesArr;
    
    for (NSInteger i = 0; i < self.imageNamesArr.count; i++) {
        
        UIImageView *imageView = [[UIImageView alloc] init];
        imageView.contentMode = UIViewContentModeScaleAspectFit;
        imageView.frame = CGRectOffset(self.bounds, i * self.bounds.size.width, 0);
        imageView.image = [UIImage imageNamed:imageNamesArr[i]];
        
        [self.welcomeScrollView addSubview:imageView];
    }
    
    
}

@end
