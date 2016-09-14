//
//  MainNavgationController.m
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//

#import "MainNavgationController.h"

@interface MainNavgationController ()

@property (nonatomic,weak) id PopDelegate;

@end

@implementation MainNavgationController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.PopDelegate = self.interactivePopGestureRecognizer.delegate;
    self.delegate = self;
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor orangeColor]];
    [self.mainTabBarItem setWithTitle:@"首页" imageStr:@"home_icon" selectImage:@"home_selected_icon" tag:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    if (viewController == self.viewControllers[0]) {
        self.interactivePopGestureRecognizer.delegate = self.PopDelegate;
    }else{
        self.interactivePopGestureRecognizer.delegate = nil;
    }
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
    }
    [super pushViewController:viewController animated:animated];
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
