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
    
    
    IBOutlet UILabel *zero;
    IBOutlet UILabel *twety;
    IBOutlet UILabel *forty;
    IBOutlet UILabel *sixty;
    IBOutlet UILabel *eigty;
    IBOutlet UILabel *hundred;
    IBOutlet UILabel *Mainheading;
    IBOutlet UILabel *CompareHeading;
    IBOutlet UILabel *importanthdg1,*importanthdg2,*importanthdg3,*importanthdg4;
    
    
    
}
@property (weak, nonatomic) IBOutlet UIBarButtonItem *sidebarButton;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;
@property (strong, nonatomic) NSString *photoFilename;
@end
