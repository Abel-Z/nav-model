//
//  ViewController.m
//  Nav全屏滑动的model
//
//  Created by 周abel on 16/4/9.
//  Copyright © 2016年 Abel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor redColor];
    
    // 设置标题
    self.title = @"我的nav";
    
    // 设置按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"下一页" forState:UIControlStateNormal];
    [btn sizeToFit];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    
}

/**
 *  监听点击事件
 */
- (void)btnClick {

    // 创建下一界面
    UIViewController *nextPageVC = [[UIViewController alloc] init];
    nextPageVC.view.backgroundColor = [UIColor grayColor];
    
    [self.navigationController pushViewController:nextPageVC animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
