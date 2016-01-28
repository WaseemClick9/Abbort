//
//  ViewController.h
//  SidebarDemo
//
//  Created by Simon on 28/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
{
    IBOutlet UIView *malnutrition;
    IBOutlet UIImageView *malImg;
    IBOutlet UIImageView *ComparsionImg;
    IBOutlet UIImageView *ImportImg;
}

@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;



@end
