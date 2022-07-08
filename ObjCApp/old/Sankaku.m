//
//  Sankaku.m
//  ObjCApp
//
//  Created by admin on 2021/11/24.
//

#import <Foundation/Foundation.h>
#import "Sankaku.h"

@implementation Sankaku

@synthesize teihen, takasa;

- (int)main {
    
    @autoreleasepool {
        Sankaku *sankaku_A = [[Sankaku alloc] init];
        sankaku_A.teihen = 6;
        sankaku_A.takasa = 4;
        NSLog(@"%d %d", sankaku_A.teihen, sankaku_A.takasa);
    }
    
    return 0;
}

@end

