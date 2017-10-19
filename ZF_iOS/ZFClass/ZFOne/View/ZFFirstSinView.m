//
//  ZFFirstSinView.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/10/19.
//  Copyright © 2017年 张木锋. All rights reserved.
//
/*
 y =Asin（ωx+φ）+C
 A表示振幅，也就是使用这个变量来调整波浪的高度
 ω表示周期，也就是使用这个变量来调整在屏幕内显示的波浪的数量
 φ表示波浪横向的偏移，也就是使用这个变量来调整波浪的流动
 C表示波浪纵向的位置，也就是使用这个变量来调整波浪在屏幕中竖直的位置。  */


#import "ZFFirstSinView.h"

@implementation ZFFirstSinView

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self =[super initWithFrame:frame]) {
        
        [self initUI];
    }
    return self;
}
- (void)initUI {
    self.backgroundColor = [UIColor blackColor];
    CAShapeLayer *firstSinLayer = [CAShapeLayer layer];
    firstSinLayer.fillColor = [UIColor cyanColor].CGColor;
    firstSinLayer.strokeColor = [UIColor yellowColor].CGColor;
    
}

@end
