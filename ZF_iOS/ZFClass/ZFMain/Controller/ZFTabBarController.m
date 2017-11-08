//
//  ZFTabBarController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/26.
//  Copyright © 2017年 张木锋. All rights reserved.
//  window -> tabBarController -> navigationController -> viewController

#import "ZFTabBarController.h"

@interface ZFTabBarController ()

@end

@implementation ZFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *one   = [self loadChildViewControllerWithClassNameString:@"ZFFunctionsViewController"   andTitle:@"Function"  andImageName:@"tabbar_function"];
    UIViewController *two   = [self loadChildViewControllerWithClassNameString:@"ZFSwiftViewController"       andTitle:@"Swift"      andImageName:@"tabbar_swift"];
    UIViewController *Three = [self loadChildViewControllerWithClassNameString:@"ZFThreeViewController" andTitle:@"Animation"  andImageName:@"tabbar_anmiation"];
    UIViewController *Four  = [self loadChildViewControllerWithClassNameString:@"ZFFourViewController"  andTitle:@"Frameworks" andImageName:@"tabbar_framework"];
    self.viewControllers = @[one, two, Three, Four];
}

- (UIViewController *)loadChildViewControllerWithClassNameString:(NSString *)className andTitle:(NSString *)title andImageName:(NSString *)imageName {
    
    UIViewController *viewController = [[NSClassFromString(className) alloc] init];
    
    viewController.title = title;
    viewController.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];

    return [[NSClassFromString(@"ZFNavigationController") alloc] initWithRootViewController:viewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
