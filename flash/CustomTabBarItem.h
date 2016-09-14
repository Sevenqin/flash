//
//  CustomTabBarItem.h
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTabBarItem : UITabBarItem

- (id)initWithTitle:(NSString *)title image:(UIImage *)image selectImage:(UIImage *)selectImage tag:(NSInteger)tag;

- (void)setWithTitle:(NSString *)title imageStr:(NSString *)imageStr selectImage:(NSString *)selectImageStr tag:(NSInteger)tag;
@end
