//
//  CompanyListCell.m
//  YJ
//
//  Created by xubojoy on 2017/6/30.
//  Copyright © 2017年 xubojoy. All rights reserved.
//

#import "CompanyListCell.h"

@implementation CompanyListCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.logoImgView.layer.cornerRadius = 30;
    self.logoImgView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
