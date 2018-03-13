//
//  ADetailViewController.m
//  demo
//
//  Created by JeremyLu on 2018/3/13.


#import "ADetailViewController.h"
#import "BViewController.h"
@interface ADetailViewController ()

@end

@implementation ADetailViewController

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
    BViewController *vc = [[BViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

//////支持旋转
-(BOOL)shouldAutorotate{
    return YES;
}

//支持的方向
- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAll;
}

//一开始屏幕的方向
-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation{
    return UIInterfaceOrientationPortrait;
}
@end
