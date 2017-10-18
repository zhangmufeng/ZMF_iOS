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
    
    self.tabBar.barTintColor = [UIColor colorWithHexString:@"#91D355"];
    UIViewController *one   = [self loadChildViewControllerWithClassNameString:@"ZFOneViewController"   andTitle:@"Functions"  andImageName:@"one"];
    UIViewController *two   = [self loadChildViewControllerWithClassNameString:@"ZFTwoViewController"   andTitle:@"Swift"      andImageName:@"one"];
    UIViewController *Three = [self loadChildViewControllerWithClassNameString:@"ZFThreeViewController" andTitle:@"Animation"  andImageName:@"one"];
    UIViewController *Four  = [self loadChildViewControllerWithClassNameString:@"ZFFourViewController"  andTitle:@"Frameworks" andImageName:@"one"];
    self.viewControllers = @[one, two, Three, Four];
}

- (UIViewController *)loadChildViewControllerWithClassNameString:(NSString *)className andTitle:(NSString *)title andImageName:(NSString *)imageName {
    
    UIViewController *viewController = [[NSClassFromString(className) alloc] init];
    viewController.title = title;
    viewController.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:(UIImageRenderingModeAlwaysOriginal)];
    viewController.view.backgroundColor = [UIColor whiteColor];
    return [[NSClassFromString(@"ZFNavigationController") alloc] initWithRootViewController:viewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}


@end
