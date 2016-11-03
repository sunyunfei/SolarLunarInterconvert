//
//  LunarSolarConverter.h
//  阳历转阴历
//
//  Created by 孙云飞 on 2016/11/3.
//  Copyright © 2016年 孙云飞. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Lunar.h"
#import "Solar.h"
@interface LunarSolarTransform : NSObject
/**
 *农历转公历
 */
+ (Solar *)lunarToSolar:(Lunar *)lunar;

/**
 *公历转农历
 */
+ (Lunar *)solarToLunar:(Solar *)solar;
//对应的星座计算
+ (NSString *)constellationFromSolar:(Solar *)solar;

//转换为农历显示形式
+ (NSString *)formatWithLunar:(Lunar *)lunar;
@end
