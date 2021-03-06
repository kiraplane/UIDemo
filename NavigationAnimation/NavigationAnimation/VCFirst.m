//
//  VCFirst.m
//  NavigationAnimation
//
//  Created by 王福滨 on 2017/5/15.
//  Copyright © 2017年 YY Inc. All rights reserved.
//

#import "VCFirst.h"
#import "VCSecond.h"

@interface VCFirst ()

@end

@implementation VCFirst

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _imageView = [[UIImageView alloc] init];
    _imageView.frame = CGRectMake(40, 40, 260, 380);
    _imageView.image = [UIImage imageNamed:@"0.jpeg"];
    [self.view addSubview:_imageView];
    self.view.backgroundColor = [UIColor whiteColor];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    // 定义一个动画变换对象，层动画对象
    // 类方法获取动画对象
    CATransition *anim = [CATransition animation];
    // 设置动画的时间长度
    anim.duration = 1;
    // 设置动画的类型决定动画的效果形式
    // cube 方形翻转
    // reveal, moveIn, fade(默认形式),pageCurl,pageUnCurl, suckEffect, rippleEffect, oglFlip
    anim.type = @"cube";
    // 设置动画的子类型，例如动画的方向
    anim.subtype = kCATransitionFromLeft;
    // 设置动画的轨迹模式
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut];
    // 将动画设置对象添加到动画上
    [self.navigationController.view.layer addAnimation:anim forKey:nil];
    
    VCSecond *vcSecond = [[VCSecond alloc] init];
    [self.navigationController pushViewController:vcSecond animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
