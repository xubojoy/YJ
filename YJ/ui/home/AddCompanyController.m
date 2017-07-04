//
//  AddCompanyController.m
//  YJ
//
//  Created by xubojoy on 2017/7/4.
//  Copyright © 2017年 xubojoy. All rights reserved.
//

#import "AddCompanyController.h"
@interface AddCompanyController ()
@property(nonatomic, strong) HeaderView *headerView;
@property(nonatomic, strong) UIButton *logoBtn;
@property(nonatomic, strong) UILabel *companyNameLabel;
@property(nonatomic, strong) UILabel *companyCodeLabel;
@end

@implementation AddCompanyController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setRightSwipeGestureAndAdaptive];
    [self initHeaderView];
    [self initUI];
}

- (void)initHeaderView{
    self.headerView = [[HeaderView alloc] initWithTitle:@"公司详情" navigationController:self.navigationController];
    [self.view addSubview:self.headerView];
}

- (void)initUI{
    [self initLogoView];
}


- (void)initLogoView{
    self.logoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.logoBtn.frame = CGRectMake((screen_width-80)/2, self.headerView.frame.size.height+40, 80, 80);
    self.logoBtn.backgroundColor = [UIColor clearColor];
    [self.logoBtn setBackgroundImage:[UIImage imageNamed:@"golf"] forState:UIControlStateNormal];
    [self.logoBtn addTarget:self action:@selector(addImageBtnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.logoBtn];
}

- (void)addImageBtnClick{

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
