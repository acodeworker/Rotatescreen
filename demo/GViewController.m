//
//  GViewController.m
//  demo
//
//  Created by Jeremy on 2018/3/13.
//  Copyright © 2018年 朱信磊. All rights reserved.
//

#import "GViewController.h"
#import "GViewController.h"
@interface GViewController ()

@end

@implementation GViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self manaualLanscape:NO];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
}

- (void)manaualLanscape:(BOOL)isVertical
{
    if (isVertical) {
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortrait]
                                    forKey:@"orientation"];//这句话是防止手动先把设备置为横屏,导致下面的语句失效.
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft]
                                    forKey:@"orientation"];
    }else{
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationLandscapeLeft]
                                    forKey:@"orientation"];//这句话是防止手动先把设备置为竖屏,导致下面的语句失效.
        [[UIDevice currentDevice] setValue:[NSNumber numberWithInteger:UIDeviceOrientationPortrait]
                                    forKey:@"orientation"];
    }
   
}

//支持旋转
-(BOOL)shouldAutorotate{
    return YES;
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscapeRight;
}

//一开始的方向  很重要
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationLandscapeRight;
}

@end
