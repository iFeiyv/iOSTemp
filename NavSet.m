//
//  NavSet.m
//  iFeieyv
//
//  Created by iFeieyv on 2018/4/26.
//  Copyright © 2018年 Shandong All-Line Technology Co., Ltd. All rights reserved.
//  用户模型

#import "NavSet.h"

@implementation NavSet

#pragma mark - 去除导航遮挡问题

-(void)setNavNoCover{
    //self 为当前所在的控制器
    self.edgesForExtendedLayout = UIRectEdgeNone;
}


@end
