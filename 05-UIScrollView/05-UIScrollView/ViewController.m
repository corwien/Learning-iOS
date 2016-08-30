//
//  ViewController.m
//  05-UIScrollView
//
//  Created by kaiyi wang on 16/8/31.
//  Copyright © 2016年 Corwien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// @property(weak, nonatomic)
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建UIScrollView
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    
    // 可视范围，能看的见的范围是 320，460
    scrollView.frame = CGRectMake(0, 0, 320, 640);
    scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:scrollView];
}


@end
