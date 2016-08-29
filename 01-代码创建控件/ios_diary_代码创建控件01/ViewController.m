//
//  ViewController.m
//  ios_diary_代码创建控件01
//
//  Created by kaiyi wang on 16/8/21.
//  Copyright © 2016年 Corwien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1.创建按钮
    UIButton *btn = [[UIButton alloc] init];
    
    // 2.设置frame
    btn.frame = CGRectMake(50, 50, 100, 100);
    
    // 设置文字
    [btn setTitle:@"点击按钮" forState:UIControlStateNormal];
    
    // 设置文字颜色
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    // 监听按钮点击
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    // 3.设置背景图片
    // UIImage *normal = [UIImage imageNamed:@"btn.jpg"];
    
    // 4.添加背景图片
    // [btn setBackgroundImage:normal forState:UIControlStateNormal];
    
    // 5.将按钮添加到view
    [self.view addSubview:btn];
    
}

-(void)btnClick:(int)m{
    NSLog(@"点击了哈~");
}

@end
