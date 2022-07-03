//
//  NSDate.m
//  ObjCApp
//
//  Created by admin on 2021/11/24.
//

#import <Foundation/Foundation.h>

@interface Date : NSObject

@end

@implementation Date

- (int)main {
    @autoreleasepool {
        NSDate *d= [[NSDate alloc] init];
        NSCalendar *cl = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierJapanese];
        unsigned int unitFlags = NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitWeekday;
        NSDateComponents *dc = [cl components:unitFlags fromDate:d];
        NSLog(@"%ld年%ld月%ld日", dc.year, dc.month, dc.day);
    }
    return 0;
}

@end
