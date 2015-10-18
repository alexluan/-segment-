//
//  ViewController.m
//  seg
//
//  Created by alexluan on 15/8/20.
//  Copyright (c) 2015年 alexluan. All rights reserved.
//

#import "ViewController.h"
#import "SegView.h"
@interface ViewController ()<segViewDelegate>

@end

@implementation ViewController
{
    UILabel * labelXian;
    CGRect   rect;
    NSArray * arr;
}
-(void)segViewSelectedId:(NSInteger ) Id{
    NSLog(@"%ld",Id);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    arr = [[NSArray alloc] initWithObjects:@"新闻/公告",@"财报/研报",@"数据分析",@"新闻/公告", nil];
    SegView * seg = [[SegView alloc] init];
     seg =[seg getSeg:arr rect:CGRectMake(0, 50, 320, 40)];
    seg.delegate = self;
    [self.view addSubview:seg];
    
    
//    rect = [UIScreen mainScreen].bounds;
//    arr = [[NSArray alloc] initWithObjects:@"新闻/公告",@"财报/研报",@"数据分析", nil];
//    UISegmentedControl* segment = [[UISegmentedControl alloc] initWithItems:arr];
////    segment.segmentedControlStyle= UISegmentedControlStyleBezeled;//设置
//    segment.tintColor= [UIColor whiteColor];
//    segment.selectedSegmentIndex = 0;
//    segment.frame = CGRectMake(0, 50, rect.size.width, 20);
//    [[UISegmentedControl appearance] setTitleTextAttributes:@{
//                                                              NSForegroundColorAttributeName : [UIColor lightGrayColor]
//                                                              } forState:UIControlStateNormal];
//    [[UISegmentedControl appearance] setTitleTextAttributes:@{
//                                                              NSForegroundColorAttributeName : [UIColor lightGrayColor]
//                                                              } forState:UIControlStateSelected];
//     [segment addTarget:self action:@selector(MenuClickType:)forControlEvents:UIControlEventValueChanged];
//    [self.view addSubview:segment];
//    
//    labelXian = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(segment.frame), rect.size.width/3, 1)];
//    labelXian.center = CGPointMake(rect.size.width/([arr count]*2) * (segment.selectedSegmentIndex *2 +1), labelXian.frame.origin.y);
//    labelXian.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:labelXian];
}
//-(void)MenuClickType:(UISegmentedControl *) segment{
//    labelXian.center = CGPointMake(rect.size.width/([arr count]*2) * (segment.selectedSegmentIndex *2 +1), CGRectGetMaxY(segment.frame));
//    
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
