//
//  UIColor+ZFColor.h
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/29.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (ZFColor)
//根据美工给的字符串获取颜色
+(UIColor *) colorWithHexString: (NSString *) stringToConvert;
//根据字符串,高度和字体获得尺寸
+ (float)stringHeightWithString:(NSString *)string withHeight:(CGFloat)height fontSize:(int)size;
//根据字符串,宽度和字体获得尺寸
+ (float)stringHeightWithString:(NSString *)string withWidth:(CGFloat)width fontSize:(int)size;
//富文本
+ (NSMutableAttributedString *)attrStrFrom:(NSString *)allString colorStr:(NSString *)colorStr color:(UIColor *)color font:(UIFont *)font;
@end
