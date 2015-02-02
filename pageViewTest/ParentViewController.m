//
//  ViewController.m
//  pageViewTest
//
//  Created by James on 2015/1/30.
//aaa

#import "ParentViewController.h"
#import "FirstViewController.h"
@interface ParentViewController ()<FirstViewControllerDelegate>
{
    FirstViewController *firstVC;
}
@end

@implementation ParentViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    firstVC = [FirstViewController new];
    firstVC.delegate = self;
}


-(void) firstViewController:(FirstViewController *)viewController andPassValue:(NSString *)value{
    NSLog(@"valeu:%@", value);
    if( [value isEqualToString:@"hi"])
    {
        self.view.backgroundColor = [UIColor redColor];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
