//
//  CusNavViewController.m
//  demo
//
//  Created by 朱信磊 on 16/6/23.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import "CusNavViewController.h"
#import "ADetailViewController.h"
#import "BViewController.h"

@interface CusNavViewController ()

@end

@implementation CusNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//支持旋转
-(BOOL)shouldAutorotate {
 
    return [[self topViewController] shouldAutorotate];
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [[self topViewController] supportedInterfaceOrientations];
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [[self topViewController]preferredInterfaceOrientationForPresentation];

}



//- (BOOL)isSupportRotateViewController:(UIViewController*)visableViewController
//{
//    if ([visableViewController isKindOfClass:[ADetailViewController class]]||
//         [visableViewController isKindOfClass:[BViewController class]])
//    {
//        return YES;
//    }else if([visableViewController respondsToSelector:@selector(<#selector#>)]){
//        return NO;
//    }
//}


@end
