//
//  UIColor+ZFColor.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/29.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "UIColor+ZFColor.h"

@implementation UIColor (ZFColor)

+ (UIColor *) colorWithHexString: (NSString *) stringToConvert {
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor blackColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"]) cString = [cString substringFromIndex:1];
    if ([cString length] != 6) return [UIColor blackColor];
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}


+ (float)stringHeightWithString:(NSString *)string withHeight:(CGFloat)height fontSize:(int)size
{
    
    CGRect rect = [string boundingRectWithSize:CGSizeMake(MAXFLOAT, height) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:size]} context:nil];
    // 向上取整
    return ceilf(rect.size.width);
}


+ (float)stringHeightWithString:(NSString *)string withWidth:(CGFloat)width fontSize:(int)size
{
    
    CGRect rect = [string boundingRectWithSize:CGSizeMake(width, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:size]} context:nil];
    // 向上取整
    return ceilf(rect.size.height);
}

/**
 *  @brief  关键字高亮的处理
 *  @category
 *    @param     allString            整体字符串
 *    @param  colorStr            要改变颜色的字符串
 *    @param     color               要设置的颜色
 *    @param     font                字号
 **/
+ (NSMutableAttributedString *)attrStrFrom:(NSString *)allString colorStr:(NSString *)colorStr color:(UIColor *)color font:(UIFont *)font
{
    NSMutableAttributedString *arrString = [[NSMutableAttributedString alloc]initWithString:allString];
    // 设置前面几个字串的格式:字号字体、颜色
    [arrString addAttributes:@{NSFontAttributeName:font,
                               NSForegroundColorAttributeName:color
                               }
                       range:[allString rangeOfString:colorStr]];
    return arrString;
}

@end
