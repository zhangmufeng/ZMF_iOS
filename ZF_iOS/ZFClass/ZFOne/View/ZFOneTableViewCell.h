//
//  ZFOneTableViewCell.h
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/27.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFBaseTableViewCell.h"
#import "ZFOneModel.h"
@interface ZFOneTableViewCell : ZFBaseTableViewCell

@property (strong, nonatomic) ZFOneModel *oneModel;
@property (weak, nonatomic) UILabel *label;
@end
