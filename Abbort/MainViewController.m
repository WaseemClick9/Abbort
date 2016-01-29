//
//  ViewController.m
//  SidebarDemo
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "MainViewController.h"
#import "SWRevealViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
   
    
    
    [self Malnutrition];
    
  [self Comparesion];
    [self import];
    
 
   // UITapGestureRecognizer *singleTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(Malnutrition)];
//    
  // [malnutrition addGestureRecognizer:singleTapGestureRecognizer];

    

    self.title = @"Ensure Product";

    // Change button color
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

}



-(void)Malnutrition
{
    
    CGRect basketTopFrame = malnutrition.frame;
    
    basketTopFrame.origin.y = 600;
    
    [UIView animateWithDuration:0.8 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{ malnutrition.frame = basketTopFrame; } completion:^(BOOL finished){
        
        NSLog(@"Done!");
        
        
    }];
}


-(void)Comparesion{
    
    CGRect basketTopFrame = ComparsionImg.frame;
    
    basketTopFrame.origin.y = 200;
    
    [UIView animateWithDuration:0.8 delay:2.8 options:UIViewAnimationOptionCurveEaseIn animations:^{ ComparsionImg.frame = basketTopFrame; } completion:^(BOOL finished){
        
        NSLog(@"Done!");
        
    }];
}


-(void)import
{
   
  
    
    [UIView animateWithDuration:1.5
                          delay:1.5
                        options: UIViewAnimationOptionTransitionCurlUp
                     animations:^{
    
         ImportImg.frame = CGRectMake(-920, 0, 10, 10);
     }
                     completion:^(BOOL finished){
                         //[splashImage removeFromSuperview];
                         //animCompleteHandlerCode..
                     }
     ];
    
//    CGRect basketTopFrame = ImportImg.frame;
//    
//    basketTopFrame.origin.x = 200;
//    
//    [UIView animateWithDuration:0.8 delay:2.0 options:UIViewAnimationOptionCurveEaseIn animations:^{ ImportImg.frame = basketTopFrame; } completion:^(BOOL finished){
//        
//        NSLog(@"Done!");
//        
//        
//    }];
//    CABasicAnimation *animation = [CABasicAnimation animation];
//    animation.keyPath = @"position.x";
//    animation.fromValue = @77;
//    animation.toValue = @455;
//    animation.duration = 1;
//    
//    animation.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.5:0:0.9:0.7];
//    
//    [ImportImg.layer addAnimation:animation forKey:@"basic"];
    
//    CABasicAnimation *animation = [CABasicAnimation animation];
//    animation.keyPath = @"position.x";
//    animation.fromValue = @77;
//    animation.toValue = @455;
//    animation.duration = 1;
//    
//    animation.fillMode = kCAFillModeForwards;
//    animation.removedOnCompletion = NO;
//    
//    [ImportImg.layer addAnimation:animation forKey:@"basic"];
    
//    CABasicAnimation *animation = [CABasicAnimation animation];
//    animation.keyPath = @"position.x";
//    animation.fromValue = @77;
//    animation.toValue = @455;
//    animation.duration = 1.5;
//    
//    [ImportImg.layer addAnimation:animation forKey:@"basic"];
//    CGRect basketTopFrame = ImportImg.frame;
//    
//    basketTopFrame.origin.x = -100;
//    
//    [UIView animateWithDuration:1.8 delay:3.0 options:UIViewAnimationOptionCurveEaseIn animations:^{ ImportImg.frame = basketTopFrame; } completion:^(BOOL finished){
//        
//        NSLog(@"Done!");
//         }];
//    CABasicAnimation *animation = [CABasicAnimation animation];
//    animation.keyPath = @"position.x";
//    animation.fromValue = @600;
//    animation.toValue = @150;
//    animation.duration = 1.5;
//    
//    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
//    
//    [ImportImg.layer addAnimation:animation forKey:@"basic"];
//    
//    
//    ImportImg.layer.position = CGPointMake(150,125);

}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
