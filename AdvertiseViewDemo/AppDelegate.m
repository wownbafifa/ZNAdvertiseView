//
//  AppDelegate.m
//  AdvertiseViewDemo
//
//  Created by zn on 16/8/11.
//  Copyright © 2016年 zn. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

#import "AdImageTool.h"
#import "AdvertiseView.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[ViewController alloc] init]];
    
    [self.window makeKeyAndVisible];
    
    // 判断沙盒中是否存在广告图片，如果存在，直接显示
    NSString *filePath = [AdImageTool getFilePathWithImageName:[kUserDefaults valueForKey:adImageName]];
    BOOL isExist = [AdImageTool isFileExistWithFilePath:filePath];
        if (isExist) {// 图片存在
            AdvertiseView *advertiseView = [[AdvertiseView alloc] initWithFrame:self.window.bounds];
            advertiseView.filePath = filePath;
            [advertiseView show];
        }
    
    // 无论沙盒中是否存在广告图片，都需要重新调用广告接口，判断广告是否更新,这一步在首页中完成。
    // [AdImageTool getAdvertisingImage];
    return YES;
}



@end
