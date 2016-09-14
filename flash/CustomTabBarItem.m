//
//  CustomTabBarItem.m
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//

#import "CustomTabBarItem.h"

@implementation CustomTabBarItem

- (id)initWithTitle:(NSString *)title image:(UIImage *)image selectImage:(UIImage *)selectImage tag:(NSInteger)tag{
    self =  [super initWithTitle:title image:image tag:tag];
    if (self) {
        UITabBarItem * item = self;
        item.selectedImage = selectImage;
        NSMutableDictionary * normalOptionDic = [NSMutableDictionary dictionary];
        normalOptionDic[NSForegroundColorAttributeName] = [UIColor grayColor];
        NSMutableDictionary * highLightOptionDic = [NSMutableDictionary dictionary];
        highLightOptionDic[NSForegroundColorAttributeName] = [UIColor greenColor];
        [item setTitleTextAttributes:normalOptionDic forState:UIControlStateNormal];
        [item setTitleTextAttributes:highLightOptionDic forState:UIControlStateSelected];
    }
    return self;
}

- (void)setWithTitle:(NSString *)title imageStr:(NSString *)imageStr selectImage:(NSString *)selectImageStr tag:(NSInteger)tag{
    self.title = title;
    self.image = [[UIImage imageNamed:imageStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.selectedImage = [[UIImage imageNamed:selectImageStr] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tag = tag;
    
}
@end
