# Rotatescreen
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
