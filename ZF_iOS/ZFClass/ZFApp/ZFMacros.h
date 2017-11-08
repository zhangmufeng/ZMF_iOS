//
//  ZFMacros.h
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/26.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#ifndef ZFMacros_h
#define ZFMacros_h


#define ZFRandomColor [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];


/******************设备*****************/

//获取设备屏幕尺寸
#define kScreen_Width [UIScreen mainScreen].bounds.size.width
#define kScreen_Height [UIScreen mainScreen].bounds.size.height

//获取状态栏高度
#define kStatusBar_Height ([UIApplication sharedApplication].statusBarFrame.size.height)

//获取导航栏高度
#define kNavigationBar_Height (self.navigationController.navigationBar.frame.size.height)

//获取标签栏高度
#define kTabBar_Height (self.tabBarController.tabBar.frame.size.height)

//判断是否 Retina屏、设备是否%fhone 5、是否是iPad
#define kIsPad (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)

#define kIsRetina ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)

#define kIs_iPhone_5 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )
#define kIs_iPhone_6 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )667 ) < DBL_EPSILON )
#define kIs_iPhone_6Plus ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )736 ) < DBL_EPSILON )

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

#define kIsIOS7 ([[[[UIDevice currentDevice] systemVersion] substringToIndex:1] intValue]>=7)

//获取系统版本
#define kIOS_Version [[[UIDevice currentDevice] systemVersion] floatValue]
#define kCurrentSystemVersion [[UIDevice currentDevice] systemVersion]

//当前系统语言
#define kCurrentLanguage ([[NSLocale preferredLanguages] objectAtIndex:0])

//当前窗口
#define kCUREENT_WINDOW [[UIApplication sharedApplication] keyWindow]

/******************颜色*****************/

//系统颜色
#define kColor(C) [UIColor C]

// rgb颜色转换（16进制->10进制）
#define kColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

//带有RGBA的颜色设置
#define kColor_RGBA(R, G, B, A) [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]

// 获取RGB颜色，透明度为1.0f
#define kColor_RGB(R,G,B) kColor_RGBA(R, G, B, 1.0f)

//系统颜色
#define kView_BackgroundColor [UIColor whiteColor]

//主题颜色(CF0000)
#define kTheamColor kColor_RGBA(207.0, 0, 0, 1.0f)

//交互颜色
#define kInteractColor kColor_RGBA(225.0, 225.0, 225.0, 1.0f)

//字体颜色
#define kBlackColor kColor_RGBA(51.0, 51.0, 51.0, 1.0f)
#define kDarkGrayColor kColor_RGBA(102.0, 102.0, 102.0, 1.0f)
#define kLightGrayColor kColor_RGBA(153.0, 153.0, 153.0, 1.0f)
#define kLightRedColor kColor_RGBA(255.0, 101.0, 101.0, 1.0f)
#define kLightGreenColor kColor_RGBA(126.0, 211.0, 33.0, 1.0f)
#define kLightBlueColor kColor_RGBA(74.0, 144.0, 226.0, 1.0f)
//线条颜色
#define kDarkLineColor kColor_RGBA(204.0, 204.0, 204.0, 1.0f)
#define kLightLineColor kColor_RGBA(238.0, 238.0, 238.0, 1.0f)

/******************字体*****************/

//常规
#define kFont(F) [UIFont systemFontOfSize:F]
//粗体
#define kBoldFont(F) [UIFont boldSystemFontOfSize:F]


/******************图片*****************/

//读取本地图片
#define kLoadImage(file,ext) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:file ofType:ext]]

//定义UIImage对象
#define kImage(A) [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:A ofType:nil]]

//定义UIImage对象
#define kImageNamed(_pointer) [UIImage imageNamed:[UIUtil imageName:_pointer]]


/******************其他*****************/

//NSUserDefaults 实例化
#define kUser_Default [NSUserDefaults standardUserDefaults]

//G－C－D
//后台线程
#define kBackTask(block) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), block)
//主线程
#define kMainTask(block) dispatch_async(dispatch_get_main_queue(),block)

//GCD创建单例（ARC）
#define DEFINE_SINGLETON_FOR_HEADER(className) \
\
+(className* )shared##className;

#define DEFINE_SINGLETON_FOR_CLASS(className) \
\
+ (className *)shared##className { \
static className *shared##className = nil; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
@synchronized(self){ \
shared##className = [[self alloc] init]; \
} \
}); \
return shared##className; \
}


//单例（非ARC）
#define kSynthesize_Singleton_For_Class(classname) \
\
static classname *shared##classname = nil; \
\
+ (classname *)shared##classname \
{ \
@synchronized(self) \
{ \
if (shared##classname == nil) \
{ \
shared##classname = [[self alloc] init]; \
} \
} \
\
return shared##classname; \
} \
\
+ (id)allocWithZone:(NSZone *)zone \
{ \
@synchronized(self) \
{ \
if (shared##classname == nil) \
{ \
shared##classname = [super allocWithZone:zone]; \
return shared##classname; \
} \
} \
\
return nil; \
} \
\
- (id)copyWithZone:(NSZone *)zone \
{ \
return self; \
}



#endif /* ZFMacros_h */
