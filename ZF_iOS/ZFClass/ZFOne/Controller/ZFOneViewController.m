//
//  ZFOneViewController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/26.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFOneViewController.h"
#import "ZFOneTableViewCell.h"
#import "ZFOneModel.h"
#import "ZFNetworkingViewController.h"
#import "ZFBlockViewController.h"
#import "ZFGCDViewController.h"
#import "ZFNSOperationViewController.h"
#import "ZFPopViewViewController.h"
#import "ZFDeviceViewController.h"
#import "ZFRACViewController.h"
#import "ZFParserViewController.h"

#define kOneCellID @"kOneCellID"

@interface ZFOneViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) NSArray *dataArr;
@end

@implementation ZFOneViewController
#pragma mark - viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadStaticData];
    [self setting];
}
#pragma mark - 加载本地数据
- (void)loadStaticData {
    NSArray *arr = @[ @{@"title" : @"NetWorking"},//@{@"title" : @""},
                      @{@"title" : @"block"},
                      @{@"title" : @"GCD"},
                      @{@"title" : @"NSOperation"},
                      @{@"title" : @"PopView"},
                      @{@"title" : @"Device"},
                      @{@"title" : @"RAC"},
                      @{@"title" : @"Parser"},
                    ];
    self.dataArr = [NSArray yy_modelArrayWithClass:[ZFOneModel class] json:arr];
}
#pragma mark - 懒加载数据源数组
- (NSArray *)dataArrM {
    if (!_dataArr) {
        _dataArr = [NSArray array];
    }
    return _dataArr;
}
#pragma mark - 设置
- (void)setting {
    
    self.oneTableView = [[ZFOneTableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    self.view = self.oneTableView;
    self.oneTableView.rowHeight = 60;
    self.oneTableView.delegate = self;
    self.oneTableView.dataSource = self;
    self.oneTableView.tableFooterView = [[UIView alloc] init];
    [self.oneTableView registerClass:[ZFOneTableViewCell class] forCellReuseIdentifier:kOneCellID];
}
#pragma mark - 数据源
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataArr.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ZFOneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kOneCellID forIndexPath:indexPath];
    ZFOneModel *oneModel = self.dataArr[indexPath.row];
    cell.oneModel = oneModel;
    return cell;
}
#pragma mark - 选中Cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case ZFTableViewRowSerialNumberZero: {
            ZFNetworkingViewController *networkingViewController = [ZFNetworkingViewController new];
             [self.navigationController pushViewController:networkingViewController animated:YES];
        } break;
            
        case ZFTableViewRowSerialNumberOne: {
            ZFBlockViewController *blockViewController = [ZFBlockViewController new];
            [self.navigationController pushViewController:blockViewController animated:YES];
        } break;
           
        case ZFTableViewRowSerialNumberTwo: {
            ZFGCDViewController *GCDViewController = [ZFGCDViewController new];
            [self.navigationController pushViewController:GCDViewController animated:YES];
        } break;
            
        case ZFTableViewRowSerialNumberThree: {
            ZFNSOperationViewController *operationViewController = [ZFNSOperationViewController new];
            [self.navigationController pushViewController:operationViewController animated:YES];
        } break;
            
        case ZFTableViewRowSerialNumberFour: {
            ZFPopViewViewController *popViewViewController = [ZFPopViewViewController new];
            [self.navigationController pushViewController:popViewViewController animated:YES];
        } break;
            
            
        case ZFTableViewRowSerialNumberFive: {
            ZFDeviceViewController *deviceViewController = [ZFDeviceViewController new];
            [self.navigationController pushViewController:deviceViewController animated:YES];
        } break;
            
            
        case ZFTableViewRowSerialNumberSix: {
            ZFRACViewController *RACViewController = [ZFRACViewController new];
            [self.navigationController pushViewController:RACViewController animated:YES];
        } break;
            
            
        case ZFTableViewRowSerialNumberSeven: {
            ZFParserViewController *parserViewController = [ZFParserViewController new];
            [self.navigationController pushViewController:parserViewController animated:YES];
        } break;
            
            
        case ZFTableViewRowSerialNumberEight: {
            ZFNetworkingViewController *networkingViewController = [ZFNetworkingViewController new];
            [self.navigationController pushViewController:networkingViewController animated:YES];
        } break;
            
            
        case ZFTableViewRowSerialNumberNine: {
            
        } break;
            
            
        case ZFTableViewRowSerialNumberTen: {
            
        } break;
            
            
        case ZFTableViewRowSerialNumberEleven: {
            
        } break;
            
            
        default:
            break;
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
