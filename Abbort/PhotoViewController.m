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
