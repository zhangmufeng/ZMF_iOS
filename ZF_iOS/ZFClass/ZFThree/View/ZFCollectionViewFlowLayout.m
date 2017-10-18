//
//  ZFCollectionViewFlowLayout.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/10/9.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFCollectionViewFlowLayout.h"

@implementation ZFCollectionViewFlowLayout

/*
 @property (nonatomic) CGFloat minimumLineSpacing;
 @property (nonatomic) CGFloat minimumInteritemSpacing;
 @property (nonatomic) CGSize itemSize;
 @property (nonatomic) CGSize estimatedItemSize NS_AVAILABLE_IOS(8_0);
 @property (nonatomic) UICollectionViewScrollDirection scrollDirection;
 @property (nonatomic) CGSize headerReferenceSize;
 @property (nonatomic) CGSize footerReferenceSize;
 */
- (void)prepareLayout {
    self.minimumLineSpacing = 10;        // 行间距
    self.minimumInteritemSpacing = 10;  // 列间距
    self.itemSize = CGSizeMake(60, 60);
    self.headerReferenceSize = CGSizeMake(100, 100);
    self.footerReferenceSize = CGSizeMake(0, 100);
}

@end
