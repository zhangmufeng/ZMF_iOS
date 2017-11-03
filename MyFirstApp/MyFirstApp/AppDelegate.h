//
//  AppDelegate.h
//  MyFirstApp
//
//  Created by 张木锋 on 2017/10/30.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

