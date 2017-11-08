//
//  ZFAppPopView.h
//  ZF_iOS
//
//  Created by 张木锋 on 2017/11/7.
//  Copyright © 2017年 张木锋. All rights reserved.
//
/**
 *  iOS弹框
 *
 *
 *
 *
 *
 *
*/

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    ZFPopViewStyleDefault,
    ZFPopViewStyleImage,
    ZFPopViewStyleNull,
} ZFPopViewStyle;

@interface ZFAppPopView : UIView

+ (__kindof ZFAppPopView * _Nonnull)sharedPopView;

+ (void)startPopViewWithController:(nonnull UIViewController *)viewController andTitle:(nullable NSString *)title andImageName:(nullable NSString *)imageName andPopViewStyle:(ZFPopViewStyle)style;

+ (void)stopPopView;

@end
