//
//  ViewController.m
//  CLShare
//
//  Created by ClaudeLi on 16/5/4.
//  Copyright © 2016年 ClaudeLi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    CLShareManager *shareView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    UIButton* button = [UIButton new];
    button.frame = CGRectMake(100, 100, 100, 50);
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"分享" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickButtonAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    shareView = [[CLShareManager alloc] init];
}

- (void)clickButtonAction{
    [shareView setShareVC:self content:@"测试分享" image:[UIImage imageNamed:@"test"] url:@"https://github.com/ClaudeLi/CLShare.git"];
    [shareView show];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
