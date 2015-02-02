//
//  FirstViewController.h
//  pageViewTest
//
//  Created by James on 2015/2/2.
//

#import <UIKit/UIKit.h>
@class FirstViewController;
@protocol FirstViewControllerDelegate <NSObject>

// delegate method
@optional
-(void) firstViewController :(FirstViewController*)viewController
                    andPassValue:(NSString*) value;

@end



@interface FirstViewController : UIViewController
- (IBAction)sendArgBtnAction:(id)sender;
@property (nonatomic, weak) id<FirstViewControllerDelegate> delegate;
@end
