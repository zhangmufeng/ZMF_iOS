//
//  ZFFourTableViewCell.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/29.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFFourTableViewCell.h"


@interface ZFFourTableViewCell ()

@property (strong, nonatomic)  UILabel *label;

@end


@implementation ZFFourTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self initUI];
    }
    return self;
}

- (void)initUI {
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor blackColor];
    imageView.clipsToBounds = YES;
    imageView.layer.cornerRadius = 8;
    [self addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(16);
        make.centerY.equalTo(self);
        make.width.height.mas_equalTo(16);
    }];
    
    UILabel *label = [[UILabel alloc] init];
    label.textColor = [UIColor redColor];
    label.font = [UIFont systemFontOfSize:16];
    label.text = @"张木锋";
    [self addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageView.mas_right).offset(16);
        make.right.equalTo(self).offset(-25);
        make.top.bottom.equalTo(self);
    }];
    self.label = label;
    
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

- (void)setFourModel:(ZFFourModel *)fourModel {
    
    _fourModel = fourModel;
    self.label.text = fourModel.title;
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end
