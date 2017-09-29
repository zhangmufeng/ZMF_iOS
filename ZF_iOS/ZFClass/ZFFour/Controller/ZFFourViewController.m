//
//  ZFFourViewController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/26.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFFourViewController.h"
#import "ZFFourTableViewCell.h"
#import "ZFFourModel.h"
#import "ZFPerformanceOptimizationViewController.h"
#import "ZFBuglyViewController.h"

#define kFourTableViewCellID @"kFourTableViewCellID"
@interface ZFFourViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *dataArr;

@end

@implementation ZFFourViewController
#pragma mark - 初始化视图
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadStaticData];
    [self setting];
}
#pragma mark - 设置
- (void)setting {
    
    self.fourTableView = [[ZFFourTableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    self.fourTableView.tableFooterView = [[UIView alloc] init];
    self.fourTableView.delegate = self;
    self.fourTableView.dataSource = self;
    [self.fourTableView registerClass:[ZFFourTableViewCell class] forCellReuseIdentifier:kFourTableViewCellID];
    [self.view addSubview:self.fourTableView];
}
#pragma mark - 加载静态数据
- (void)loadStaticData {
    NSArray *arr = @[@{@"title" : @"iOS 性能优化"},
                     @{@"title" : @"iOS ReactiveCocoa"},
                     @{@"title" : @"iOS Swift"},
                     @{@"title" : @"iOS Bugly"},
                     @{@"title" : @"iOS 极光推送"},
                     @{@"title" : @"iOS 个推推送"},
                     @{@"title" : @"iOS 友盟分享"},
//                     @{@"title" : @"iOS 个推推送"},
//                     @{@"title" : @"iOS 个推推送"},
//                     @{@"title" : @"iOS 个推推送"},
                     @{@"title" : @"iOS 蒲公英分发"},
                     ];
    self.dataArr = [NSArray yy_modelArrayWithClass:[ZFFourModel class] json:arr].copy;
}
#pragma mark - 数据源
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZFFourTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFourTableViewCellID forIndexPath:indexPath];

    ZFFourModel *fourModel = self.dataArr[indexPath.row];
    cell.fourModel = fourModel;
    return cell;
}
#pragma mark - 行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 60;
}
#pragma mark - 选中
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case ZFTableViewRowSerialNumberZero: {
            ZFPerformanceOptimizationViewController *performanceOptimizationViewController = [ZFPerformanceOptimizationViewController new];
            performanceOptimizationViewController.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:performanceOptimizationViewController animated:YES];
        } break;
        case ZFTableViewRowSerialNumberOne: {
            
        } break;
        case ZFTableViewRowSerialNumberTwo: {
            
        } break;
        case ZFTableViewRowSerialNumberThree: {
            ZFBuglyViewController *buglyViewController = [ZFBuglyViewController new];
            buglyViewController.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:buglyViewController animated:YES];
        } break;
        case ZFTableViewRowSerialNumberFour: {
            
        } break;
        case ZFTableViewRowSerialNumberFive: {
            
        } break;
        case ZFTableViewRowSerialNumberSix: {
            
        } break;
        case ZFTableViewRowSerialNumberSeven: {
            
        } break;
        case ZFTableViewRowSerialNumberEight: {
            
        } break;
        case ZFTableViewRowSerialNumberNine: {
            
        } break;
        case ZFTableViewRowSerialNumberTen: {
            
        } break;
        default:
            break;
    }
}
#pragma mark -
#pragma mark -
#pragma mark -
#pragma mark - 懒加载
- (NSArray *)dataArrM {
    if (!_dataArr) {
        _dataArr = [NSArray array];
    }
    return _dataArr;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
