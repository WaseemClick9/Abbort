//
//  FiveViewController.m
//  Abbort
//
//  Created by Rehanuddin on 28/01/2016.
//  Copyright (c) 2016 Waseem. All rights reserved.
//

#import "FiveViewController.h"
#import "SWRevealViewController.h"

@interface FiveViewController ()

@end

@implementation FiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIImage *myImage = [UIImage imageNamed:@"menu.png"];
    
    UIBarButtonItem *Menu = [[UIBarButtonItem alloc]initWithImage: myImage style:UIBarButtonItemStylePlain target:self.revealViewController action:@selector(revealToggle:)];
    
    
    self.navigationItem.leftBarButtonItem = Menu;
    
    Menu.tintColor = [UIColor colorWithWhite:0.1f alpha:0.9f];

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
