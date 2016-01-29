//
//  ThirdViewController.m
//  Abbort
//
//  Created by Rehanuddin on 28/01/2016.
//  Copyright (c) 2016 Waseem. All rights reserved.
//

#import "ThirdViewController.h"
#import "SWRevealViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    [self fadeIn];
    [self transition];

    
    // for POP Animation tranisition  n up to down
//    CATransition *transition = [CATransition animation];
//    transition.type          = kCATransitionPush;
//    transition.duration      = 0.3;
//    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    transition.subtype       = kCATransitionFromBottom;
//    
//    [View1.layer addAnimation:transition forKey:nil];
    
    
    // for PUSH Animation Transition
    
    //down to up
//    CATransition *transition = [CATransition animation];
//    transition.type          = kCATransitionPush;
//    transition.duration      = 0.8;
//    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    transition.subtype       = kCATransitionFromTop;
//    
//    [View1.layer addAnimation:transition forKey:nil];
    
    
    // Zoom IN Tranisition
//    View1.transform = CGAffineTransformMakeScale(1, 1);
//    [UIView beginAnimations:@"zoomIn" context:nil];
//    [UIView setAnimationDuration:1.0]; // Time in seconds
//   View1.transform = CGAffineTransformMakeScale(1.2, 1.2);
    
    
    // zoom out transitiion
//    View1.transform = CGAffineTransformMakeScale(1.2, 1.2);
//    [UIView beginAnimations:@"zoomOut" context:nil];
//    [UIView setAnimationDuration:1.0]; // Time in seconds
//    View1.transform = CGAffineTransformMakeScale(1, 1);
    
//    [UIView animateWithDuration:2.0 animations:^{ View1.center = CGPointMake(View1.frame.origin.x, 500); }];
//    
   
//    [UIView animateKeyframesWithDuration:3.0
//                                   delay:0.0
//                                 options:(UIViewAnimationCurveEaseInOut | UIViewAnimationCurveEaseIn)
//                              animations:^{
//                                  [View1 setCenter:CGPointMake(300, 500)];
//                              }
//                              completion:nil];
    
    
    UIImage *myImage = [UIImage imageNamed:@"menu.png"];
    
    UIBarButtonItem *Menu = [[UIBarButtonItem alloc]initWithImage: myImage style:UIBarButtonItemStylePlain target:self.revealViewController action:@selector(revealToggle:)];
    
    
    self.navigationItem.leftBarButtonItem = Menu;
    
    Menu.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void) fadeIn{
    
    [label setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:1.8f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [label setAlpha:1.f];
    }  completion:nil];
    
    
//    [label setAlpha:0];
//    [UILabel beginAnimations:NULL context:nil];
//    [UILabel setAnimationDuration:2.0];
//    
//    [label setAlpha:1];
//
//    [UILabel commitAnimations];
}

-(void)transition
{

    [UIView transitionWithView:View1
                      duration:1.5
                       options: UIViewAnimationOptionTransitionCurlUp
     animations:^{
         View1.frame = CGRectMake(-320, 0, 10, 10);
     }
                    completion:^(BOOL finished){
                        //[View1 removeFromSuperview];
                        //animCompleteHandlerCode..
                    }
     ];
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
