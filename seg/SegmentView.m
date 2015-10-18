//
//  SegmentView.m
//  seg
//
//  Created by alexluan on 15/8/20.
//  Copyright (c) 2015年 alexluan. All rights reserved.
//

#import "SegmentView.h"

@implementation SegmentView
{
    UILabel * labelXian;
    NSArray * arrLocal;
    CGRect rectLocal;
}
-(UIView *)getSeg:(NSArray *) arr rect:(CGRect ) rect{
    arrLocal = arr;
    rectLocal = rect;
    UIView * backView = [[UIView alloc] init];
    backView.frame = rect;
    arr = [[NSArray alloc] initWithObjects:@"新闻/公告",@"财报/研报",@"数据分析", nil];
    UISegmentedControl* segment = [[UISegmentedControl alloc] initWithItems:arr];
    //    segment.segmentedControlStyle= UISegmentedControlStyleBezeled;//设置
    segment.tintColor= [UIColor whiteColor];
    segment.selectedSegmentIndex = 0;
    segment.frame = CGRectMake(0, 0, rect.size.width, rect.size.height);
    [[UISegmentedControl appearance] setTitleTextAttributes:@{
                                                              NSForegroundColorAttributeName : [UIColor lightGrayColor]
                                                              } forState:UIControlStateNormal];
    [[UISegmentedControl appearance] setTitleTextAttributes:@{
                                                              NSForegroundColorAttributeName : [UIColor lightGrayColor]
                                                              } forState:UIControlStateSelected];
    [segment addTarget:self action:@selector(MenuClickType:)forControlEvents:UIControlEventValueChanged];
    [backView addSubview:segment];
    
    labelXian = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(segment.frame), rect.size.width/3, 1)];
    labelXian.center = CGPointMake(rect.size.width/([arr count]*2) * (segment.selectedSegmentIndex *2 +1), labelXian.frame.origin.y);
    labelXian.backgroundColor = [UIColor lightGrayColor];
    [backView addSubview:labelXian];

    return backView;
}
-(void)MenuClickType:(UISegmentedControl *) segment{
    labelXian.center = CGPointMake(rectLocal.size.width/([arrLocal count]*2) * (segment.selectedSegmentIndex *2 +1), CGRectGetMaxY(segment.frame));
    
}
@end
