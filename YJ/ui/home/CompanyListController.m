//
//  CompanyListController.m
//  YJ
//
//  Created by xubojoy on 2017/6/29.
//  Copyright © 2017年 xubojoy. All rights reserved.
//

#import "CompanyListController.h"
#import "CompanyListCell.h"
#import "CompanyDetailController.h"
#import "AddCompanyController.h"
@interface CompanyListController ()
@property(nonatomic, strong) NSArray *array;
@end
static NSString *companyListCellIdentifier = @"CompanyListCell";
@implementation CompanyListController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
//    self.title = @"CHECK ME";
    self.array = @[
                      @{
                          @"id": @(1),
                      @"logo": @"golf.png",
                      @"name": @"每日高尔夫（北京）科技有限公司",
                      @"code": @"9111-0101-3303-7306-17",
    
                      },
                      @{
                          @"id": @(2),
                      @"logo": @"huifenqi.jpg",
                      @"name": @"会找房（北京）网络技术有限公司",
                      @"code": @"9111-0108-3183-4529-5U",
                      },
                      @{
                          @"id": @(3),
                      @"logo": @"th.png",
                      @"name": @"北京听花科技有限公司",
                      @"code": @"9111-0105-MA00-5LKW-0Y",
                      },
                      @{
                          @"id": @(4),
                      @"logo": @"tairui.png",
                      @"name": @"泰瑞数创科技（北京）有限公司",
                      @"code": @"9111-0108-7662-8712-1Q",
                      }
                      ];
    
    [self initUI];
}

- (void)initUI{
    [self initHeaderView];
    [self initTableView];
    [self initBottomBtn];
}

- (void)initHeaderView{
    self.headerView = [[HeaderView alloc] initWithTitle:@"CHECK ME" navigationController:self.navigationController];
    self.headerView.backgroundColor = [UIColor whiteColor];
    self.headerView.backBut.hidden = YES;
    [self.view addSubview:self.headerView];
}

- (void)initTableView{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.headerView.frame.size.height+splite_line_height, screen_width, screen_height-self.headerView.frame.size.height-tabbar_height) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    UINib *nib = [UINib nibWithNibName:@"CompanyListCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:companyListCellIdentifier];
    [self.view addSubview:self.tableView];
}

- (void)initBottomBtn{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, screen_height-tabbar_height, screen_width, tabbar_height);
    btn.backgroundColor = [UIColor purpleColor];
    [btn setTitle:@"添加公司" forState:UIControlStateNormal];
    [btn.titleLabel setFont:[UIFont systemFontOfSize:default_font_size]];
    [btn addTarget:self action:@selector(addCompanyBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

#pragma mark - UITableViewDatasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    UITableViewCell *cell = [UITableViewCell new];
    CompanyListCell *cell = [tableView dequeueReusableCellWithIdentifier:companyListCellIdentifier forIndexPath:indexPath];
    NSDictionary *dict = self.array[indexPath.row];
    NSLog(@">>>>>>>>>>>>>%@",dict);
    cell.logoImgView.image = [UIImage imageNamed:dict[@"logo"]];
    cell.companyNameLabel.text = dict[@"name"];
    return cell;
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 80;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    CompanyDetailController *comvc = [[CompanyDetailController alloc] init];
    [self.navigationController pushViewController:comvc animated:YES];
}

#pragma mark - BtnClick

- (void)addCompanyBtnClick{
    AddCompanyController *addvc = [[AddCompanyController alloc] init];
    [self.navigationController pushViewController:addvc animated:YES];
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
