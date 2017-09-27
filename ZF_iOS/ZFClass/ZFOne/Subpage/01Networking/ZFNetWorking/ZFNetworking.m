//
//  ZFNetworking.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/27.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFNetworking.h"

@implementation ZFNetworking

+ (void)get_networkWithURLString:(NSString *)URLString parameter:(NSDictionary *)parameterDict success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    
    AFHTTPSessionManager *sessionManager = [AFHTTPSessionManager manager];
    
}
+ (void)post_networkWithURLString:(NSString *)URLString parameter:(NSDictionary *)parameterDict success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    
}
@end
