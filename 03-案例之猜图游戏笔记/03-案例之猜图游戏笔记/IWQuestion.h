//
//  IWQuestion.h
//  03-案例之猜图游戏笔记
//
//  Created by kaiyi wang on 16/8/26.
//  Copyright © 2016年 Corwien. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IWQuestion : NSObject

@property(nonatomic, copy)NSString *answer;

@property(nonatomic, copy)NSString *title;

@property(nonatomic, copy)NSString *icon;


-(instancetype)initWithDict:(NSDictionary *)dict;

+(instancetype)questionWithDict:(NSDictionary *)dict;

@end
