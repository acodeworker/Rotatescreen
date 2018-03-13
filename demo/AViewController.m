//
//  AViewController.m
//  demo
//
//  Created by JeremyLu on 2018/3/13.
//  Copyright © 2018年 朱信磊. All rights reserved.
//

#import "AViewController.h"
#import "ADetailViewController.h"

@interface AViewController ()

@end

@implementation AViewController

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
    ADetailViewController *vc = [[ADetailViewController alloc]init];
  
    [self.navigationController pushViewController:vc animated:YES];
}




@end
