//
//  segView.m
//  seg
//
//  Created by alexluan on 15/8/20.
//  Copyright (c) 2015年 alexluan. All rights reserved.
//

#import "SegView.h"

@implementation SegView
{
    UILabel * labelXian;
    NSArray * arrLocal;
    CGRect rectLocal;
}
-(instancetype)init{
    self = [super init];
    
    return self;
}
-(id)getSeg:(NSArray *) arr rect:(CGRect ) rect{
    arrLocal = arr;
    rectLocal = rect;
    self.frame = rect;
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
    [self addSubview:segment];
    
    labelXian = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(segment.frame), rect.size.width/[arr count], 1)];
    labelXian.center = CGPointMake(rect.size.width/([arr count]*2) * (segment.selectedSegmentIndex *2 +1), labelXian.frame.origin.y);
    labelXian.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:labelXian];
    
    return self;
}
-(void)MenuClickType:(UISegmentedControl *) segment{
    labelXian.center = CGPointMake(rectLocal.size.width/([arrLocal count]*2) * (segment.selectedSegmentIndex *2 +1), CGRectGetMaxY(segment.frame));
    if (self.delegate && [self.delegate respondsToSelector:@selector(segViewSelectedId:)]) {
        [self.delegate segViewSelectedId:segment.selectedSegmentIndex];
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
