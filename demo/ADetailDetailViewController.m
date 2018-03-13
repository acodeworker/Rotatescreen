//
//  ADetailDetailViewController.m
//  demo
//
//  Created by JeremyLu on 2018/3/13.
//  Copyright © 2018年 朱信磊. All rights reserved.
//

#import "ADetailDetailViewController.h"

@interface ADetailDetailViewController ()

@end

@implementation ADetailDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSStringFromClass([self class]);
    self.hidesBottomBarWhenPushed = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//////支持旋转
-(BOOL)shouldAutorotate{
    return NO;
}

//支持的方向 因为界面A我们只需要支持竖屏
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

//一开始屏幕的方向
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}

@end
