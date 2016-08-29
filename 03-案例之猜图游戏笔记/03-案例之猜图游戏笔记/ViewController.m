//
//  ViewController.m
//  03-案例之猜图游戏笔记
//
//  Created by kaiyi wang on 16/8/26.
//  Copyright © 2016年 Corwien. All rights reserved.
//  add note

#import "ViewController.h"
#import "IWQuestion.h"



@interface ViewController ()
@property (nonatomic, retain) NSArray *questions;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 打印数组的第一个元素的对象数据
    IWQuestion *myItems = [self.questions objectAtIndex:0];
    NSLog(@"打印字典转模型的数组---%@", myItems.title);
    


}


/**
 *  初始化questions属性
 *
 *  @return array
 */
-(NSArray *)questions
{
    if(_questions == nil)
    {
        // 1.加载plist
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"questions" ofType:@"plist"]];
        
        // 2.字典转模型
        NSMutableArray *quesArray = [[NSMutableArray alloc] init];
        for(NSDictionary *dict in dictArray)
        {
            IWQuestion *myQues = [IWQuestion questionWithDict:dict];
            [quesArray addObject:myQues];
            
        }
        
        // 3.赋值
        _questions = quesArray;
    }
    
    return _questions;
    
}

@end
