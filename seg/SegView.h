//
//  segView.h
//  seg
//
//  Created by alexluan on 15/8/20.
//  Copyright (c) 2015年 alexluan. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol segViewDelegate <NSObject>
-(void)segViewSelectedId:(NSInteger ) Id;

@end

@interface SegView : UIView
@property (nonatomic , strong)id<segViewDelegate>delegate;
-(id)getSeg:(NSArray *) arr rect:(CGRect ) rect;
@end
