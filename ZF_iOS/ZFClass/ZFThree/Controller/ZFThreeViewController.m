//
//  ZFThreeViewController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/26.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFThreeViewController.h"
static NSString *identifier = @"ZFThreeCollectionViewCellID";
@interface ZFThreeViewController ()<UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation ZFThreeViewController
#pragma mark - 初始化视图
- (void)viewDidLoad {
    [super viewDidLoad];
    [self setting];
    [self initUI];
}
#pragma mark - 设置
- (void)setting {
    self.threeCollectionView.delegate = self;
    self.threeCollectionView.dataSource = self;
    
}
#pragma mark - 加载视图
- (void)initUI{

}
#pragma mark - 数据源方法
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 2;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 10;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    //根据identifier从缓冲池里去出cell
    ZFThreeCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:identifier forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor orangeColor];
    
    return cell;
}
#pragma mark - 懒加载CollectionCiew
- (ZFThreeCollectionView *)threeCollectionView {
    
    if (!_threeCollectionView) {
        ZFCollectionViewFlowLayout *collectionViewFlowLayout = [[ZFCollectionViewFlowLayout alloc] init];
        _threeCollectionView = [[ZFThreeCollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:collectionViewFlowLayout];
    }
    return _threeCollectionView;
}
#pragma mark - 处理内存警告
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
