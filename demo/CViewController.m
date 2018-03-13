//
//  CViewController.m
//  demo
//
//  Created by Jeremy on 2018/3/13.
//  Copyright © 2018年 朱信磊. All rights reserved.
//

#import "CViewController.h"
#import "DViewController.h"

@interface CViewController ()

@end

@implementation CViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSStringFromClass([self class]);
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    self.tabBarController.tabBar.hidden = NO;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self pushaction];
}

-(void)pushaction {
    DViewController *vc = [[DViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
}
////支持旋转
//-(BOOL)shouldAutorotate{
//    return YES;
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
