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
    
    // 可视范围，能看的见的范围是 400，460
    // 获取屏幕的宽高
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
    scrollView.frame = CGRectMake(0, 0, screenW , screenH);
    scrollView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:scrollView];
    
    
     // 拿到图片的宽度和高度
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.image = [UIImage imageNamed:@"myImage.jpg"];
    CGFloat imgW = imageView.image.size.width;
    CGFloat imgH = imageView.image.size.height;
    
    // 设置控件位置大小
    imageView.frame = CGRectMake(0, 0, imgW, imgH);
    [scrollView addSubview:imageView];
    
     // 设置UIScrollView的滚动范围（内容大小）
    scrollView.contentSize = imageView.image.size;
    
    // 隐藏滚动条
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.showsHorizontalScrollIndicator = YES;
    
    // 设置弹簧效果
    // scrollView.bounces = NO; // 去掉弹簧效果
    
    
    // 结构体类型    make快速创建                up left down right
   // scrollView.contentInset = UIEdgeInsetsMake(50, 0, 0, 0);

    
    
    
}


@end
