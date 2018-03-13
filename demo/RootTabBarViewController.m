//
//  RootTabBarViewController.m
//  Zmodo Zsight
//
//  Created by 郑一辰 on 14-1-13.
//  Copyright (c) 2014年 Zmodo. All rights reserved.
//

#import "RootTabBarViewController.h"
#import "AViewController.h"
#import "CViewController.h"
#import "CusNavViewController.h"


@interface RootTabBarViewController ()

@end

@implementation RootTabBarViewController

/**
 
 
 */



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    //添加新的设备控制流程入口
    [self loadViewControllers];
    
}

- (void)loadViewControllers {
    
    // 1.新建第一页视图控制器实例
    CusNavViewController* a = [[CusNavViewController alloc]initWithRootViewController:[AViewController new]];
    // 2.新建第一页导航控制器实例，把firstVC加入进去
     // 3.新建第一页的标签栏图标
    UITabBarItem *firstTabBarItem =[[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:0];
    // 4.图标加入到第一页的导航控制器上
    a.tabBarItem = firstTabBarItem;
    
    // 第二页
    CusNavViewController* b = [[CusNavViewController alloc]initWithRootViewController:[CViewController new]];
     UITabBarItem *secondTabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:1];
    b.tabBarItem = secondTabBarItem;
    
    // 5.新建一个导航控制器实例的数组
    NSArray *controllersArray = @[a,b];
    // 6.把导航控制器的数组加入到标签控制器
    [self setViewControllers:controllersArray animated:YES];
    
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}


#pragma mark Autorotate

//支持旋转
-(BOOL)shouldAutorotate{
      return [[self selectedViewController] shouldAutorotate];
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return [[self selectedViewController] supportedInterfaceOrientations];
}

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return [[self selectedViewController] preferredInterfaceOrientationForPresentation];
}
//- (UIInterfaceOrientationMask)supportedInterfaceOrientations{
//
//    UINavigationController *navViewController = [self selectedViewController];
//    UIViewController *visableViewController = [navViewController visibleViewController];
//
//    if ([self isSupportRotateViewController:visableViewController])
//    {
//        return [visableViewController supportedInterfaceOrientations];
//    }else{
//        return UIInterfaceOrientationMaskPortrait;
//    }
//}
//
//- (BOOL)shouldAutorotate
//{
//    UINavigationController *navViewController = [self selectedViewController];
//    UIViewController *visableViewController = [navViewController visibleViewController];
//    if ([self isSupportRotateViewController:visableViewController])
//    {
//        return [visableViewController shouldAutorotate];
//    }
//    else{
//        return NO;
//    }
//}

#pragma mark-- private method
- (BOOL)isSupportRotateViewController:(UIViewController*)visableViewController
{
//    if ([visableViewController isKindOfClass:[PlayDiscoveryViewController class]] ||
//        [visableViewController isKindOfClass:[DoorbellPlayController class]] ||
//        [visableViewController isKindOfClass:[SimpleDoorbellPlayViewController class]] ||
//        [visableViewController isKindOfClass:[SDCardPlaybackViewController class]] ||
//        [visableViewController isKindOfClass:[EventDetailViewController class]] ||
//        [visableViewController isKindOfClass:[PlayVideoAndImageViewController class]] ||
//        [visableViewController isKindOfClass:[IPCRepeaterPlayBackViewController class]] ||
//        [visableViewController isKindOfClass:[RealTimePlayViewController class]] ||
//        [visableViewController isKindOfClass:[ZMDPlayBackViewController class]] ||
//        [visableViewController isKindOfClass:[HomeViewController class]] ||
//        [visableViewController isKindOfClass:[DeviceSettingBaseViewController class]] ||
//        [visableViewController isKindOfClass:[DetectionAreaViewController class]] ||
//        [visableViewController isKindOfClass:[AlertVideoPlayViewController class]])
    {
        return YES;
    }
//    else{
//        return NO;
//    }
}



@end
