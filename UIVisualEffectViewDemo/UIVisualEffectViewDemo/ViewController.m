//
//  ViewController.m
//  UIVisualEffectViewDemo
//
//  Created by 刘培策 on 16/10/18.
//  Copyright © 2016年 UniqueCe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIImageView *image = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"hjgh8"]];
    [self.view addSubview:image];
    image.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height);

    //UIBlurEffectStyleDark-->黑暗
    [self setupUIVisualEffectViewStyle:UIBlurEffectStyleDark andSize:CGRectMake(0, 30, self.view.bounds.size.width, 100)];
    //UIBlurEffectStyleExtraLight-->轻质
    [self setupUIVisualEffectViewStyle:UIBlurEffectStyleExtraLight andSize:CGRectMake(0, 230, self.view.bounds.size.width, 100)];
    //UIBlurEffectStyleLight-->透明
    [self setupUIVisualEffectViewStyle:UIBlurEffectStyleLight andSize:CGRectMake(0, 430, self.view.bounds.size.width, 100)];
    
}

#pragma makr-->UIVisualEffectView的创建
- (void)setupUIVisualEffectViewStyle:(UIBlurEffectStyle)style andSize:(CGRect)rect {
    //做毛玻璃效果最新方法
    UIVisualEffectView *visualEffect = [[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:style]];
    
    visualEffect.frame = rect;
    
    [self.view addSubview:visualEffect];
    
    UIImageView *ima = [[UIImageView alloc]init];
    ima.image = [UIImage imageNamed:@"hjgh8"];
    
    ima.center = CGPointMake(visualEffect.bounds.size.width/2, visualEffect.bounds.size.height/2);
    ima.bounds = CGRectMake(0, 0, 100, 50);
    
    [visualEffect addSubview:ima];

}


@end
