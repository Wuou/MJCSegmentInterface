//
//  MJCDemoVC7.m
//  MJCSegmentInterface
//
//  Created by mjc on 17/7/13.
//  Copyright © 2017年 MJC. All rights reserved.
//

#import "MJCDemoVC7.h"
#import "MJCPrefixHeader.pch"

@interface MJCDemoVC7 ()

@end

@implementation MJCDemoVC7

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MJCTestViewController *vc1 = [[MJCTestViewController alloc]init];
    MJCTestTableViewController *vc2 = [[MJCTestTableViewController alloc]init];
    MJCTestViewController1 *vc3 = [[MJCTestViewController1 alloc]init];
    MJCTestCollectVC *vc4 = [[MJCTestCollectVC alloc]init];
    MJCTestViewController *vc5 = [[MJCTestViewController alloc]init];
    MJCTestViewController *vc6 = [[MJCTestViewController alloc]init];
    MJCTestViewController *vc7 = [[MJCTestViewController alloc]init];
    NSArray *vcarrr = @[vc1,vc2,vc3,vc4,vc5,vc6,vc7];
    NSArray *titlesArr = @[@"荣耀",@"联盟",@"DNF",@"CF",@"飞车",@"炫舞",@"天涯明月刀"];
    for (int i = 0 ; i < vcarrr.count; i++) {//赋值标题
        UIViewController *vc = vcarrr[i];
        vc.title = titlesArr[i];
    }

    
    
    
    
    
    
    //以下是我的控件中的代码
    MJCSegmentInterface *lala = [[MJCSegmentInterface alloc]init];
    lala.titleBarStyles = MJCTitlesScrollStyle;
    lala.frame = CGRectMake(0,64,self.view.jc_width, self.view.jc_height-64);
    lala.imageEffectStyles  = MJCImageUpDownStyle;
    lala.itemTextNormalColor = [UIColor redColor];
    lala.itemTextSelectedColor = [UIColor purpleColor];
    lala.isIndicatorFollow = YES;
    lala.selectedSegmentIndex = 3;
    lala.defaultShowItemCount = 5;
    lala.itemBackColor = [UIColor whiteColor];
    lala.itemImageNormal  = [UIImage imageNamed:@"bulb-2"];
    lala.itemImageSelected  = [UIImage imageNamed:@"bulb"];
    [lala intoTitlesArray:titlesArr hostController:self];
    [self.view addSubview:lala];
    [lala intoChildControllerArray:vcarrr];;
    
}


@end
