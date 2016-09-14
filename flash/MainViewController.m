//
//  MainViewController.m
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"电力Youngers";
    // 设置左手边的Item
    UIView * leftButtonView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 70, 30)];
//    leftButtonView.backgroundColor = [UIColor blueColor];
//    leftButtonView.backgroundColor = [UIColor blueColor];
//    
//    UIButton * leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
//    leftButton.frame = CGRectMake(0, 0, 50, 30);
//    [leftButton setTitle:@"good" forState:UIControlStateNormal];
//    leftButton.backgroundColor = [UIColor blueColor];
    UIImageView * locationImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,0, 30, 30)];
    locationImageView.image = [UIImage imageNamed:@"location_icon"];
    locationImageView.contentMode = UIViewContentModeScaleAspectFit;
    UILabel * locationLabel = [[UILabel alloc] initWithFrame:CGRectMake(30, 00, 40, 30)];
    locationLabel.text = @"武汉";
    [leftButtonView addSubview:locationImageView];
    [leftButtonView addSubview:locationLabel];
    UIBarButtonItem * leftItem = [[UIBarButtonItem alloc] initWithCustomView:leftButtonView];
    [leftItem setTarget:self];
    [leftItem setAction:@selector(selectLocation)];
    self.navigationItem.leftBarButtonItem = leftItem;
    
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
- (void)selectLocation{
    NSLog(@"进入城市选择界面");
}
@end
