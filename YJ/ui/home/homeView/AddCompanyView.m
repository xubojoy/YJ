//
//  AddCompanyView.m
//  YJ
//
//  Created by xubojoy on 2017/7/4.
//  Copyright © 2017年 xubojoy. All rights reserved.
//

#import "AddCompanyView.h"

@implementation AddCompanyView
- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self = [[NSBundle mainBundle] loadNibNamed:@"AddCompanyView" owner:self options:nil][0];
        self.frame = frame;
    }
    return self;
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
