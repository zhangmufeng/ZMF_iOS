//
//  ZFTwoViewController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/9/26.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFTwoViewController.h"
// 基于OC调用Swift  需要引入这个头文件，这个文件看不见但是真实存在
#import "ZF_iOS-Swift.h"

NSString * const twoTableViewID = @"ZFTwoTableViewCellID";

@interface ZFTwoViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) NSArray *dataArr;
@property (strong, nonatomic) ZFTwoTableView *twoTableView;

@end

@implementation ZFTwoViewController
#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    [self setting];
    [self initUI];
}
#pragma mark - 加载数据
- (void)loadData {
    self.dataArr = @[ @{@"title" : @"ZFSwiftGrammar"},
                      
                    ];
}
#pragma mark - 设置
- (void)setting {
    
}
#pragma mark - 初始化界面
- (void)initUI {
    // 基于OC调用Swift  直接采用OC的调用方式
    self.twoTableView  = [[ZFTwoTableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    self.twoTableView.delegate   = self;
    self.twoTableView.dataSource = self;
    [self.twoTableView registerClass:[ZFTwoTableViewCell class] forCellReuseIdentifier: twoTableViewID];
    [self.view addSubview:self.twoTableView];
}
#pragma mark - 数据源方法
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZFTwoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:twoTableViewID forIndexPath:indexPath];
    return cell;
}
#pragma mark - 选中cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case ZFTableViewRowSerialNumberZero: {
            NSLog(@"ZFSwiftGrammarViewController");
            ZFSwiftGrammarViewController *swiftGrammarViewController = [ZFSwiftGrammarViewController new];
            [self.navigationController pushViewController:swiftGrammarViewController animated:YES];
        } break;
            
        default:
            break;
    }
}
#pragma mark - 行高
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
#pragma mark -
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
- (NSArray *)dataArr {
    if (!_dataArr) {
        _dataArr = [NSArray array];
    }
    return _dataArr;
}
@end
