//
//  Solar.m
//  阳历转阴历
//
//  Created by 孙云飞 on 2016/11/3.
//  Copyright © 2016年 孙云飞. All rights reserved.
//

#import "Solar.h"

@implementation Solar
//构造
- (instancetype)initWithYear:(int)year andMonth:(int)month andDay:(int)day{

    self = [super init];
    if (self) {
        
        self.solarYear = year;
        self.solarMonth = month;
        self.solarDay = day;
    }
    return self;
}
@end
