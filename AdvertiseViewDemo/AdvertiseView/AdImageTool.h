//
//  AdImageTool.h
//  JinSeShiJi
//
//  Created by zn on 16/8/11.
//
//

#import <Foundation/Foundation.h>

@interface AdImageTool : NSObject
/**
 *  判断文件是否存在
 */
+ (BOOL)isFileExistWithFilePath:(NSString *)filePath;

/**
 *  初始化广告页面
 */
+ (void)getAdvertisingImage;

/**
 *  下载新图片
 */
+ (void)downloadAdImageWithUrl:(NSString *)imageUrl imageName:(NSString *)imageName;

/**
 *  删除旧图片
 */
+ (void)deleteOldImage;

/**
 *  根据图片名拼接文件路径
 */
+ (NSString *)getFilePathWithImageName:(NSString *)imageName;
@end
