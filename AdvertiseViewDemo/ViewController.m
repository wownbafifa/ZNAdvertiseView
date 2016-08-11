//
//  ViewController.m
//  AdvertiseViewDemo
//
//  Created by zn on 16/8/11.
//  Copyright © 2016年 zn. All rights reserved.
//

#import "ViewController.h"
#import "AdImageTool.h"//广告也图片工具
#import "AdvertiseViewController.h"//广告跳转页

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pushToAd) name:@"pushtoad" object:nil];//广告页点击事件
    [AdImageTool getAdvertisingImage];//判断广告是否更新
}

- (void)pushToAd {
//    NSString *url = [SystemInfo getSystemInfoFoKey:@"LAUNCH_INTENT_URL"];//判断是否有需要跳转的广告页
//    if (url.length > 0) {
        AdvertiseViewController *adVc = [[AdvertiseViewController alloc] init];
//        adVc.adUrl = url;
        [self.navigationController pushViewController:adVc animated:YES];
//    }
}
@end
