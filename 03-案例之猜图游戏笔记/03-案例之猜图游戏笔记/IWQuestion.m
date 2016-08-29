//
//  IWQuestion.m
//  03-案例之猜图游戏笔记
//
//  Created by kaiyi wang on 16/8/26.
//  Copyright © 2016年 Corwien. All rights reserved.
//

#import "IWQuestion.h"

@implementation IWQuestion


/**
 *  字典转模型
 */
-(instancetype)initWithDict:(NSDictionary *)dict
{
    // 初始化子类
    if(self = [super init])
    {
        self.icon = dict[@"icon"];
        self.title = dict[@"title"];
        self.answer = dict[@"answer"];
        
    }
    
    return self;
    
}


/**
 *  调用方法
 *
 *  @param dict <#dict description#>
 *
 *  @return <#return value description#>
 */
+(instancetype)questionWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}
@end
