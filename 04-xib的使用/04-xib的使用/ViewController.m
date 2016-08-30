//
//  ViewController.m
//  04-xib的使用
//
//  Created by kaiyi wang on 16/8/30.
//  Copyright © 2016年 Corwien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    // 1、xib的文件加载
    NSArray *objs = [[NSBundle mainBundle] loadNibNamed:@"myTest" owner:nil options:nil];
    
    // 2、获取xib的View
    UIView *appView = [objs lastObject];
    
    // 3、设置frame
    appView.frame = CGRectMake(20, 50, 200, 100);
    
    // 4、添加View
    [self.view addSubview:appView];
    
    // 打印数据
    NSLog(@"%@", appView);
}


@end
