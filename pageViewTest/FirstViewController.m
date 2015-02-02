//
//  FirstViewController.m
//  pageViewTest
//
//  Created by James on 2015/2/2.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)sendArgBtnAction:(id)sender {
    
        NSLog(@"send arg button click");
    if( [_delegate respondsToSelector:@selector(firstViewController:andPassValue:)])
    {
    
        NSLog(@"delegate:%@",_delegate);
        
        [_delegate firstViewController:self andPassValue:@"hi"];
    }

}
@end
