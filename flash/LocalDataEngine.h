//
//  LocalDataEngine.h
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//  本地数据的获取都在这里
//

#import "Question.h"

@protocol LocationDataDelegate <NSObject>

- (NSArray *)fetchExamInfo;
- (NSArray *)fetchUserInfo;

@end

@interface LocalDataEngine : NSObject


@end
