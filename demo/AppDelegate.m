//
//  AppDelegate.m
//  demo
//
//  Created by 朱信磊 on 16/5/26.
//  Copyright © 2016年 朱信磊. All rights reserved.
//

#import "AppDelegate.h"
 #import "RootTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
/***
 需求
 note:tabbarcontroller管理两个navigationcontroller
 AViewController 和 CViewController
 AViewController 是主页，不支持横竖屏
 AViewController push到ADetailViewController
 ADetailViewController支持横竖屏。
 ADetailViewController push到BViewController
 BViewController 不支持横竖屏
 BViewController present到ViewControllertwo
 ViewControllertwo 只支持横屏。
 
 CViewController 不支持横竖屏
 DViewController 支持
 FViewController 不支持
 FViewController 进去默认横屏
 实现过程：
 rootabarcontroller实现以下方法
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
 
 UINavigationController实现以下方法
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
    其他的控制器都是继承自ADetailDetailViewController
    ADetailDetailViewController默认只支持竖屏，如果想更改，需要重写他的方法
 
 //支持旋转 如果是yes，支持的方向起码要两个，因为一个的话就没办法自动旋转。
 -(BOOL)shouldAutorotate{
    return YES;
 }
 //
 //支持的方向
 - (UIInterfaceOrientationMask)supportedInterfaceOrientations {
 return UIInterfaceOrientationMaskLandscapeLeft;
 }
 
 //一开始的方向  很重要
 -(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
 return UIInterfaceOrientationLandscapeLeft;
 }
 
 */

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    [self.window makeKeyAndVisible];
    RootTabBarViewController *vc  =[[RootTabBarViewController alloc]init];
    [self.window setRootViewController:vc];
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
