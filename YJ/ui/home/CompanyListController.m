//
//  CompanyListController.m
//  YJ
//
//  Created by xubojoy on 2017/6/29.
//  Copyright © 2017年 xubojoy. All rights reserved.
//

#import "CompanyListController.h"

@interface CompanyListController ()

@end

@implementation CompanyListController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    self.title = @"CHECK ME";
    [self initUI];
}

- (void)initUI{
    [self initHeaderView];
    [self initTableView];
}

- (void)initHeaderView{
    self.headerView = [[HeaderView alloc] initWithTitle:@"CHECK ME" navigationController:self.navigationController];
    self.headerView.backgroundColor = [UIColor whiteColor];
    self.headerView.backBut.hidden = YES;
    [self.view addSubview:self.headerView];
}

- (void)initTableView{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.headerView.frame.size.height+splite_line_height, screen_width, screen_height-self.headerView.frame.size.height) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

#pragma mark - UITableViewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [UITableViewCell new];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return general_cell_height;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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
