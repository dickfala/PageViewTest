//
//  IntroPagesViewController.m
//  pageViewTest
//
//  Created by James on 2015/1/30.
//

#import "ContainerViewController.h"

@interface ContainerViewController ()
{
    NSArray *myViewControllers;
    UIPageControl *pageControl;
}
@end

@implementation ContainerViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    self.dataSource = self;
    pageControl = [UIPageControl appearance];
    pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
    pageControl.backgroundColor = [UIColor clearColor];
    
    UIViewController *powerVC = [self.storyboard
                                 instantiateViewControllerWithIdentifier:@"PowerPage"];
    
    
    UIViewController *MainVC = [self.storyboard
                                instantiateViewControllerWithIdentifier:@"MainControlPage"];
    
    myViewControllers = @[powerVC,MainVC];
    
    [self setViewControllers:@[powerVC]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:NO completion:nil];
    
    self.modalPresentationStyle = UIModalPresentationCurrentContext;
    self.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    
    [[powerVC view] setBackgroundColor:[UIColor clearColor]];
    [[MainVC view] setBackgroundColor:[UIColor clearColor]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIViewController *)viewControllerAtIndex:(NSUInteger)index
{
    
    
    return myViewControllers[index];
}


-(UIViewController*) pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    
    NSUInteger currentIndex = [myViewControllers indexOfObject:viewController];
    if( currentIndex == 0 )
    {
        return nil;
    }
    NSLog(@"before currentIndex:%ld",currentIndex);
    currentIndex--;

    return [myViewControllers objectAtIndex:currentIndex];
}


-(UIViewController *) pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [myViewControllers indexOfObject:viewController];
    
    NSLog(@"after currentIndex:%ld",currentIndex);
    currentIndex++;

    if( currentIndex == [myViewControllers count])
    {
        return nil;
    }

    return [myViewControllers objectAtIndex:currentIndex];
}


-(NSInteger)presentationCountForPageViewController:
(UIPageViewController *)pageViewController
{
    return myViewControllers.count;
}

-(NSInteger)presentationIndexForPageViewController:
(UIPageViewController *)pageViewController
{
    return 0;
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
