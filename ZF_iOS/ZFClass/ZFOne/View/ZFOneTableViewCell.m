//
//  ZFOneTableViewCell.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/27.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFOneTableViewCell.h"


@implementation ZFOneTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self initUI];
    }
    return self;
    
}

- (void)initUI {
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor greenColor];
    imageView.clipsToBounds = YES;
    imageView.layer.cornerRadius = 8;
    [self addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(16);
        make.centerY.equalTo(self);
        make.width.height.mas_equalTo(16);
    }];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"张木锋";
    [self addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageView.mas_right).offset(8);
        make.right.equalTo(self).offset(-25);
        make.top.bottom.equalTo(self);
    }];
    self.label = label;
    
    //my_indicator
    UIImageView *indiImageView = [[UIImageView alloc] init];
    indiImageView.image = [UIImage imageNamed:@"my_indicator"];
    indiImageView.backgroundColor = [UIColor whiteColor];
    [self addSubview:indiImageView];
    [indiImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-13);
        make.centerY.equalTo(self);
        make.width.equalTo(@9);
        make.height.equalTo(@18);
    }];
}

- (void)setOneModel:(ZFOneModel *)oneModel {
    _oneModel = oneModel;
    self.label.text = oneModel.title;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

   
}

@end
