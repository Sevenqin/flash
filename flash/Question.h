//
//  Question.h
//  flash
//
//  Created by seven on 16/9/13.
//  Copyright © 2016年 seven. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    QUESTION_TYPE_SINGLEOPTION = 0,     //单选
    QUESTION_TYPE_MULTIOPTION = 1,  //多选
    QUESTION_TYPE_FILL = 2, //填空
    QUESTION_TYPE_JUDGE = 3, //判断
    QUESTION_TYPE_DISCUSS = 4, //论述
    QUESTION_TYPE_SAQ= 5, //简答
    
}QuestionType;

@interface Question : NSObject

@property (nonatomic,strong) NSString * question;
@property (nonatomic,strong) NSMutableDictionary * options;
@property (nonatomic,strong) NSString * answer;
@property (nonatomic,assign) QuestionType type;

@end
