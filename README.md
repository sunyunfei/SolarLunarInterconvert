# iOS阴历阳历互转

# 前言
公司的APP需要日历，日历的需求需要阳历转换阴历（这个很好写），但是还需要阴历转换阳历。这个就非常的不好计算了。因为阴历转换阳历不是一件简单的事情，你要考虑闰月的问题，这个很蛋疼。刚开始的时候百度了好多，关于农历转换阳历的内容很少，找到了一个IDJCalendar，确实可以解决这个问题。但是怎么说呢，还是想再精进一些（不是说人家写的不好哈，只是我只用里面的一个知识点，不想导入这么多文件）。距离上次日历编码过去了2个月了块，今天忽然找到一篇很好的阳历阴历转换的代码，作者也是从其他地方找到的，贴了出来非常好。我把自己对着码的项目拿出来，有需要的可以直接集成用。
# 正文
你可以直接导入使用。
导入头文件
```
#import "CalendarHeader.h"
```
使用很简单
```
Solar *s = [[Solar alloc]initWithYear:[self.solarYear.text intValue]
                                 andMonth:[self.solarMonth.text intValue]
                                   andDay:[self.solarDay.text intValue]];
    //得出阴历
    Lunar *l = [CalendarDisplyManager obtainLunarFromSolar:s];

 Lunar *l2 = [[Lunar alloc]initWithYear:[self.lunarYear.text intValue]
                                 andMonth:[self.lunarMonth.text intValue]
                                   andDay:[self.lunarDay.text intValue]];
    //得出阳历
    Solar *s = [CalendarDisplyManager obtainSolarFromLunar:l2];
```
核心.m文件：
```
LunarSolarTransform
```
阴阳历适用于1887--2110之间，如果需要更多，修改对应的数组数据。
阴历转换阳历需要做知道阴历是否是阴月，这个我真的不知道怎么计算了，网上查了好多也没有结果，最后我是直接把阴月拿出来，去对比。代码中闰月范围1950---2050，如需要增加，自行增加(与阴历阳历的范围限制不同，这个可以自行选择增加)也就是说在1950-2050之外的阴历时间计算阳历，你需要自己给闰月。不然闰月计算阳历会出错。
运行结果：
![效果图](http://upload-images.jianshu.io/upload_images/1210430-e45fe0c0438e4f08.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)
