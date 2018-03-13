//
//  BViewController.m
//  demo
//
//  Created by JeremyLu on 2018/3/13.
//  Copyright © 2018年 朱信磊. All rights reserved.
//

#import "BViewController.h"
#import "ViewControllertwo.h"

@interface BViewController ()

@end

@implementation BViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSStringFromClass([self class]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    [self pushaction];
}

-(void)pushaction {
    
    ViewControllertwo *vc = [[ViewControllertwo alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
}

@end
