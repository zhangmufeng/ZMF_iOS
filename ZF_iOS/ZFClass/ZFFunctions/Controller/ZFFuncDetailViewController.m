//
//  ZFFuncDetailViewController.m
//  ZF_iOS
//
//  Created by 张木锋 on 2017/10/20.
//  Copyright © 2017年 张木锋. All rights reserved.
//

#import "ZFFuncDetailViewController.h"
#import "ZFFuncDetailTableView.h"
#import "ZFFuncDetailTableViewCell.h"
#import "ZFFunctionModel.h"
#import "ZFSliderViewController.h"

#define kZFFuncDetailTableViewCell  @"ZFFuncDetailTableViewCellID"

@interface ZFFuncDetailViewController () <UITableViewDelegate, UITableViewDataSource>

@property (strong, nonatomic) ZFFuncDetailTableView *functionDetailTableView;
@property (strong, nonatomic) NSArray *dataArr;
@end

@implementation ZFFuncDetailViewController

- (void)viewWillAppear:(BOOL)animated {
    UIButton *backButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [backButton setImage:[UIImage imageNamed:@"返回"] forState:(UIControlStateNormal)];
    [backButton addTarget:self action:@selector(back) forControlEvents:(UIControlEventTouchUpInside)];
    backButton.imageEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    backButton.frame = CGRectMake(0, 0, 40, 40);
    UIBarButtonItem *backBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
    UIButton *closeButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
    [closeButton setImage:[UIImage imageNamed:@"关闭"] forState:(UIControlStateNormal)];
    [closeButton addTarget:self action:@selector(close) forControlEvents:(UIControlEventTouchUpInside)];
    closeButton.imageEdgeInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    closeButton.frame = CGRectMake(0, 0, 25, 25);
    UIBarButtonItem *closeBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:closeButton];
    self.navigationItem.leftBarButtonItems = @[backBarButtonItem, closeBarButtonItem];
}
- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)close {
    
    NSLog(@"关闭相应跟控制器");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadData];
    [self initUI];
}
- (void)loadData {
    self.dataArr = [NSArray array];
    NSArray *arr = @[@{@"titleStr" : @"轮播图"}
                    ];
    self.dataArr = [NSArray yy_modelArrayWithClass:[ZFFunctionModel class] json:arr];
 
    NSLog(@"self.dataArr = %@", self.dataArr);
}
- (void)initUI {
    self.title = @"FunctionDetail";
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:18], NSForegroundColorAttributeName : [UIColor blackColor]}];
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithHexString:@"#EBEBEB"];
    self.functionDetailTableView = [[ZFFuncDetailTableView alloc] initWithFrame:self.view.bounds style:(UITableViewStylePlain)];
    [self.view addSubview:self.functionDetailTableView];
    self.functionDetailTableView .delegate = self;
    self.functionDetailTableView.dataSource = self;
    [self.functionDetailTableView registerClass:[ZFFuncDetailTableViewCell class] forCellReuseIdentifier:kZFFuncDetailTableViewCell];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZFFuncDetailTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kZFFuncDetailTableViewCell forIndexPath:indexPath];
    ZFFunctionModel *functionModel = self.dataArr[indexPath.row];
    cell.functionModel = functionModel;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case ZFTableViewRowSerialNumberZero: {
            ZFSliderViewController *sliderViewController = [ZFSliderViewController new];
            [self.navigationController pushViewController:sliderViewController animated:YES];
        } break;
            
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
