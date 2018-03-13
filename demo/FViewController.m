//
//  FViewController.m
//  demo
//
//  Created by Jeremy on 2018/3/13.
//  Copyright © 2018年 朱信磊. All rights reserved.
//

#import "FViewController.h"
#import "GViewController.h"
@interface FViewController ()

@end

@implementation FViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self pushaction];
}

-(void)pushaction {
    GViewController *vc = [[GViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}
////支持旋转
//-(BOOL)shouldAutorotate{
//    return NO;
//}
////
////支持的方向
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
//    return UIInterfaceOrientationMaskAll;
//}
//
////一开始的方向  很重要
//-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
//    return UIInterfaceOrientationPortrait;
//}

@end
