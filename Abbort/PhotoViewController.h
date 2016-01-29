//
//  PhotoViewController.h
//  SidebarDemo
//
//  Created by Simon on 30/6/13.
//  Copyright (c) 2013 Appcoda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PhotoViewController : UIViewController
{
    IBOutlet UIView *View1;
    IBOutlet UIView *viewObjB;
    IBOutlet UIView * viewObjC;
    
    IBOutlet UIView *malnutrition;
    IBOutlet UIImageView *malImg;
    IBOutlet UIImageView *ComparsionImg;
    IBOutlet UIImageView *ImportImg;
    
    
}
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (strong, nonatomic) NSString *photoFilename;
@end
