//
//  ViewController.m
//  02-plist学习
//
//  Created by kaiyi wang on 16/8/25.
//  Copyright © 2016年 Corwien. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // 1.获得plist文件的全路径
    NSBundle *bundle = [NSBundle mainBundle];
    
    NSString *path = [bundle pathForResource:@"images" ofType:@"plist"];
    // NSLog(@"%@", path);
    
    NSArray *myPlist = [NSArray arrayWithContentsOfFile:path];
    NSLog(@"%@", myPlist);   // 打印plist
    
    // NSNumber *num = @0;
    NSDictionary *mydict = [myPlist objectAtIndex:0];   // 获取数组的第一个元素，字典类型
    NSLog(@"%@", mydict[@"name"]);
    
    // 设置图片View
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = self.view.frame;
    
    // 加载图片
    imageView.image = [UIImage imageNamed:@"myImage.jpg"];
    
    imageView.layer.cornerRadius = 80;
    imageView.clipsToBounds = YES;

    [self.view addSubview:imageView];
    
}


@end
