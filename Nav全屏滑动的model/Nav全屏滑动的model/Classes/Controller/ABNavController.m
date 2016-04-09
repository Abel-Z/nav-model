//
//  ABNavController.m
//  Nav全屏滑动的model
//
//  Created by 周abel on 16/4/9.
//  Copyright © 2016年 Abel. All rights reserved.
//

#import "ABNavController.h"

@interface ABNavController () <UIGestureRecognizerDelegate>

@end

@implementation ABNavController

- (void)viewDidLoad {
    [super viewDidLoad];

    // 1.0 自定义手势
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
    
    pan.delegate = self;
    
    // 2.0 添加手势
    [self.view addGestureRecognizer:pan];
    
    // 3.0 禁止原生手势
    self.interactivePopGestureRecognizer.enabled = NO;

}

// 代理方法
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {

    // 非根控制器下,返回YES
    return self.childViewControllers.count>1;
}

@end
