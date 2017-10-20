//
//  ZFFuncDetailTableViewCell.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/10/20.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFFuncDetailTableViewCell.h"

@interface ZFFuncDetailTableViewCell ()

@property (strong, nonatomic) UILabel *titleLabel;

@end

@implementation ZFFuncDetailTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        [self initUI];
    }
    return self;
}

- (void)initUI {
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"会员"];
    [self addSubview:imageView];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).offset(16);
        make.centerY.equalTo(self);
        make.width.height.mas_equalTo(40);
    }];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.font = [UIFont systemFontOfSize:18];
    self.titleLabel = titleLabel;
    [self addSubview:titleLabel];
    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imageView.mas_right).offset(20);
        make.centerY.equalTo(imageView);
    }];
    
    UIImageView *indictorImageView = [[UIImageView alloc] init];
    indictorImageView.image = [UIImage imageNamed:@"箭头 右"];
    [self addSubview:indictorImageView];
    [indictorImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self).offset(-16);
        make.centerY.equalTo(self);
        make.width.height.mas_equalTo(24);
    }];
}

- (void)setFunctionModel:(ZFFunctionModel *)functionModel {
    _functionModel = functionModel;
    
    self.titleLabel.text = functionModel.titleStr;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

   
}

@end
