//
//  CustomTabBar.h
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomTabBarDelegate <UITabBarDelegate>

@end


@interface CustomTabBar : UITabBar

@property (nonatomic,weak) id<CustomTabBarDelegate> delegate;

@end
