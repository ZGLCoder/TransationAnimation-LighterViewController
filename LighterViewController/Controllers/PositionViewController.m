//
//  PositionViewController.m
//  LighterViewController
//
//  Created by 邹功梁 on 16/3/5.
//  Copyright © 2016年 邹功梁. All rights reserved.
//

#import "PositionViewController.h"
#import "PositionCell.h"
#import "ArrayDataSource.h"
#import "UserData.h"
#import "DataHandle.h"
#import "AppDelegate.h"
#import "PositionCell+ConfigureForData.h"
#import "TransationToNextVC.h"
#import "DetailViewController.h"

static NSString *const PositionCellIdentifier = @"PositionCell";

@interface PositionViewController ()<UITableViewDelegate>

@property (nonatomic, strong) ArrayDataSource *arrayDataSource;

@end

@implementation PositionViewController
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.tableView.hidden = NO;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor colorWithRed:0.91 green:0.94 blue:0.94 alpha:1];
    self.tableView.backgroundColor = [UIColor clearColor];
    
    self.navigationItem.title = @"iOS";
    self.navigationController.navigationBar.barTintColor = [UIColor colorWithRed:0.33 green:0.79 blue:0.76 alpha:1];
    
    // 设置通知当数据解析完成后
    NSNotificationCenter * center = [NSNotificationCenter defaultCenter];
    [center addObserver:self selector:@selector(tableViewReloadData) name:@"reloadData" object:nil];
    
    [self setupTableView];
}
- (nullable id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    
    return [[TransationToNextVC alloc] init];
}
#pragma mark - reloadData
- (void)tableViewReloadData {
    NSMutableArray *dataArray = [AppDelegate shareDelegate].data.data;
    [self.arrayDataSource reloadDataWithItems:dataArray];
    [self.tableView reloadData];
}
#pragma mark - setupTableView
- (void)setupTableView {
    TableViewCellConfigureBlock configureBlock = ^(PositionCell *cell, UserData *data) {
        [cell configureForData:data];
    };
    NSMutableArray *dataArray = [AppDelegate shareDelegate].data.data;
    
    self.arrayDataSource = [[ArrayDataSource alloc] initWithItems:dataArray cellIdentifier:PositionCellIdentifier configureCellBlock:configureBlock];
    
    self.tableView.dataSource = self.arrayDataSource;
    [self.tableView registerNib:[PositionCell nib] forCellReuseIdentifier:@"PositionCell"];
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    CGRect rectInTableView = [tableView rectForRowAtIndexPath:indexPath];
    CGRect rect = [tableView convertRect:rectInTableView toView:[tableView superview]];
    
    [self shotBackGroundImageAndCreateCoverViewInRect:rect];
    
    DetailViewController *detail = [DetailViewController new];
    detail.coverView = self.coverView;
    detail.transitioningDelegate = self;
    [self presentViewController:detail animated:YES completion:nil];
}
#pragma mark - 截屏 并且 提取出cell
- (void)shotBackGroundImageAndCreateCoverViewInRect:(CGRect)rect {
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, YES, 0.0);
    [self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *coverImage = UIGraphicsGetImageFromCurrentImageContext();
    self.backGroundImage = [[UIImageView alloc] initWithImage:coverImage];
    self.backGroundImage.frame = self.view.bounds;
    [self.view addSubview:self.backGroundImage];
    
    self.coverView = [[UIView alloc] initWithFrame:rect];
    self.coverView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.coverView];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
