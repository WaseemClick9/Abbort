//
//  EightViewController.m
//  Abbort
//
//  Created by Rehanuddin on 28/01/2016.
//  Copyright (c) 2016 Waseem. All rights reserved.
//

#import "EightViewController.h"
#import "SWRevealViewController.h"

@interface EightViewController ()

@end

@implementation EightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    UIBarButtonItem *Menu = [[UIBarButtonItem alloc] initWithTitle:@"one" style:UIBarButtonItemStylePlain target:self.revealViewController action:@selector(revealToggle:)];
    
    UIImage *myImage = [UIImage imageNamed:@"menu.png"];
    
    UIBarButtonItem *Menu = [[UIBarButtonItem alloc]initWithImage: myImage style:UIBarButtonItemStylePlain target:self.revealViewController action:@selector(revealToggle:)];
    
    
    self.navigationItem.leftBarButtonItem = Menu;
   
    Menu.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
 
    
    
    
    _sidebarButton.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];
    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    _sidebarButton.target = self.revealViewController;
    _sidebarButton.action = @selector(revealToggle:);
    
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    

    
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

@end
