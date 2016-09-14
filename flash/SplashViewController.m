//
//  SplashViewController.m
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//

#import "SplashViewController.h"
#import "MainTabBarController.h"

@interface SplashViewController ()

@end

@implementation SplashViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.splashBgView.image = [UIImage imageNamed:@"splash"];
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MainTabBarController *vc = [story instantiateViewControllerWithIdentifier:@"mainTabBarController"];
    
    __block SplashViewController * bself = self;
    
    double delayInSeconds = 5.0;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t)(delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
        [bself presentViewController:vc animated:YES completion:^{
            NSLog(@"Push success");
        }];
    });
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
