//
//  MainNavgationController.h
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTabBarItem.h"

@interface MainNavgationController : UINavigationController<UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet CustomTabBarItem *mainTabBarItem;

@end
