//
//  Lunar.m
//  阳历转阴历
//
//  Created by 孙云飞 on 2016/11/3.
//  Copyright © 2016年 孙云飞. All rights reserved.
//

#import "Lunar.h"

@implementation Lunar
//构造
- (instancetype)initWithYear:(int)year andMonth:(int)month andDay:(int)day{

    self = [super init];
    if (self) {
        
        self.lunarYear = year;
        self.lunarMonth = month;
        self.lunarDay = day;
    }
    return self;
}
@end
