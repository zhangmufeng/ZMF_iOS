//
//  ZFNetworking.h
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/27.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZFNetworking : NSObject

+ (void)get_networkWithURLString:(NSString *)URLString parameter:(NSDictionary *)parameterDict success:(void(^)(id data))success failure:(void(^)(NSError *error))failure;

+ (void)post_networkWithURLString:(NSString *)URLString parameter:(NSDictionary *)parameterDict success:(void(^)(id data))success failure:(void(^)(NSError *error))failure;

@end
