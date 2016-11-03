//
//  ViewController.m
//  阳历转阴历
//
//  Created by 孙云飞 on 2016/11/3.
//  Copyright © 2016年 孙云飞. All rights reserved.
//

#import "ViewController.h"
#import "CalendarHeader.h"
@interface ViewController ()
//阳历转阴历控件
@property (weak, nonatomic) IBOutlet UITextField *solarYear;
@property (weak, nonatomic) IBOutlet UITextField *solarMonth;
@property (weak, nonatomic) IBOutlet UITextField *solarDay;
@property (weak, nonatomic) IBOutlet UILabel *lunarResult;
@property (weak, nonatomic) IBOutlet UILabel *lunarResult2;
- (IBAction)clickTopBtn;

//阴历转阳历控件
@property (weak, nonatomic) IBOutlet UITextField *lunarYear;
@property (weak, nonatomic) IBOutlet UITextField *lunarMonth;
@property (weak, nonatomic) IBOutlet UITextField *lunarDay;
@property (weak, nonatomic) IBOutlet UILabel *solarResult;
- (IBAction)clickBottomBtn;

@end
//默认填写入的参数都是对的，不做任何判断做法了
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clickTopBtn {
    
    Solar *s = [[Solar alloc]initWithYear:[self.solarYear.text intValue]
                                 andMonth:[self.solarMonth.text intValue]
                                   andDay:[self.solarDay.text intValue]];
    //得出阴历
    Lunar *l = [CalendarDisplyManager obtainLunarFromSolar:s];
    self.lunarResult.text = [NSString stringWithFormat:@"阴历显示：%i年 %i月 %i日 闰月:%i 星座:%@",l.lunarYear,l.lunarMonth,l.lunarDay,l.isleap,[CalendarDisplyManager obtainConstellationFromSolar:s]];
    __block typeof(self)weakSelf = self;
    [CalendarDisplyManager resultWithLunar:l resultFormat:^(NSString *year,
                                                            NSString *month,
                                                            NSString *day) {
        
        weakSelf.lunarResult2.text = [NSString stringWithFormat:@"格式显示:%@年 %@ %@",year,month,day];
    }];
}

- (IBAction)clickBottomBtn {
    
    Lunar *l = [[Lunar alloc]initWithYear:[self.lunarYear.text intValue]
                                 andMonth:[self.lunarMonth.text intValue]
                                   andDay:[self.lunarDay.text intValue]];
    Solar *s = [CalendarDisplyManager obtainSolarFromLunar:l];
    self.solarResult.text = [NSString stringWithFormat:@"阳历显示：%i年 %i月 %i日 星座:%@",s.solarYear,s.solarMonth,s.solarDay,[CalendarDisplyManager obtainConstellationFromSolar:s]];
}

@end
