//
//  PhotoViewController.m
//  SidebarDemo
//
//  Created by Simon on 30/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import "PhotoViewController.h"
#import "SWRevealViewController.h"

@interface PhotoViewController ()

@end


@implementation PhotoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    [self Malnutrition];
    
    [self Comparesion];
    [self import];

    
    
    
   //  [self FilpAnimation];
    
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [animation setAutoreverses:YES];
    [animation setFromValue:[NSNumber numberWithFloat:1.3f]];
    [animation setToValue:[NSNumber numberWithFloat:1.f]];
    [animation setDuration:2.f];
    [animation setRemovedOnCompletion:NO];
    
    [animation setFillMode:kCAFillModeForwards];
    [[viewObjB layer] addAnimation:animation forKey:@"scale"];
//        [UIView animateKeyframesWithDuration:1.0 delay:0.0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        
//        // scale the view down by half over 25% of the duration
//        [UIView addKeyframeWithRelativeStartTime:0.0 relativeDuration:0.25 animations:^{
//            View1.transform = CGAffineTransformScale(View1.transform, 0.5f, 0.5f);
//        }];
    
        // fade the view out starting at 10% of the duration until the end of the duration
//        [UIView addKeyframeWithRelativeStartTime:0.1 relativeDuration:0.9 animations:^{
//            View1.alpha = 0.0f;
//        }];
//        
//    } completion:^(BOOL finished) {
//        NSLog(@"Animation complete!");
//    }];

 // view will dismisss
//    CABasicAnimation *fade = [CABasicAnimation animationWithKeyPath:@"opacity"];
//    fade.fromValue = @(View1.alpha);
//    fade.toValue = @(0.0f);
//    fade.duration = 1.0;
//    fade.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
//    
//    View1.alpha = 0.0f;
//    
    //[View1.layer addAnimation:fade forKey:@"someUniqueKey"];
    
//    [UIView transitionWithView:View1
//                      duration:1.5
//                       options:UIViewAnimationOptionTransitionCurlDown
//                    animations:^ { View1.alpha = 1.0; }
//                    completion:nil];

    // Change button color
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    // Load image
    self.photoImageView.image = [UIImage imageNamed:self.photoFilename];
}


-(void)Malnutrition
{
    
    CGRect basketTopFrame = malImg.frame;
    
    basketTopFrame.origin.y = 600;
    
    [UIView animateWithDuration:1.5 delay:0.0 options:UIViewAnimationOptionCurveEaseIn animations:^{ malImg.frame = basketTopFrame; } completion:^(BOOL finished){
        
        NSLog(@"Done!");
        
        
    }];
    
    
    [Mainheading setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:1.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [Mainheading setAlpha:1.f];
    }  completion:nil];
}


-(void)Comparesion{
    
    CGRect basketTopFrame = ComparsionImg.frame;
    
    basketTopFrame.origin.y = 200;
    
    [UIView animateWithDuration:0.8 delay:2.8 options:UIViewAnimationOptionCurveEaseIn animations:^{ ComparsionImg.frame = basketTopFrame; } completion:^(BOOL finished){
        
        NSLog(@"Done!");
        
    }];
    
    [CompareHeading setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:3.2f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [CompareHeading setAlpha:1.f];
    }  completion:nil];
    
    [zero setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:3.5f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [zero setAlpha:1.f];
    }  completion:nil];
    
    [twety setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:3.8f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [twety setAlpha:1.f];
    }  completion:nil];
    
    [forty setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:4.1f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [forty setAlpha:1.f];
    }  completion:nil];
    
    [sixty setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:4.4f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [sixty setAlpha:1.f];
    }  completion:nil];
    
    [eigty setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:4.7f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [eigty setAlpha:1.f];
    }  completion:nil];
    
    [hundred setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:5.0f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [hundred setAlpha:1.f];
    }  completion:nil];
    
}


-(void)import
{
    
    
    
    [UIView animateWithDuration:1.5
                          delay:2.0
                        options: UIViewAnimationOptionTransitionCurlUp
                     animations:^{
                         
                         ImportImg.frame = CGRectMake(-920, 0, 10, 10);
                     }
                     completion:^(BOOL finished){
                         //[splashImage removeFromSuperview];
                         //animCompleteHandlerCode..
                     }
     ];
    
    [importanthdg1 setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:2.5f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [importanthdg1 setAlpha:1.f];
    }  completion:nil];
    
    [importanthdg2 setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:2.5f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [importanthdg2 setAlpha:1.f];
    }  completion:nil];
    
    
    [importanthdg3 setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:2.5f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [importanthdg3 setAlpha:1.f];
    }  completion:nil];
    
    [importanthdg4 setAlpha:0.f];
    
    [UIView animateWithDuration:2.f delay:2.5f options:UIViewAnimationOptionCurveEaseIn animations:^{
        [importanthdg4 setAlpha:1.f];
    }  completion:nil];
    
    
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



-(void)FilpAnimation
{
    viewObjB.alpha=1.0;
    viewObjB.hidden=NO;
    [UIView transitionWithView:viewObjB
                      duration:1.5
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{
                        viewObjB.hidden=YES;
                        viewObjB.alpha=0.0;
                    } completion:nil];
    
    viewObjC.alpha=0.0;
    viewObjC.hidden=YES;
    [UIView transitionWithView:viewObjC
                      duration:1.5
                       options:UIViewAnimationOptionTransitionFlipFromLeft
                    animations:^{
                        viewObjC.hidden=NO;
                        viewObjC.alpha=1.0;
                    } completion:nil];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
