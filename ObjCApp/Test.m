//
//  Test.m
//  ObjCApp
//
//  Created by admin on 2021/11/24.
//

#import <Foundation/Foundation.h>

// MARK: - Struct

typedef struct Person Person;

typedef struct BirthDate {
    int year;
    int month;
    int day;
} BirthDate;

struct Person {
    float height;
    float weight;
    BirthDate birthDate;
};

typedef enum Season { SPRING, SUMMER, AUTUMN, WINTER } Season;

@interface Test : NSObject

@end

@implementation Test

- (int)main {
    
    @autoreleasepool {
        Person person;
        person.height = 170.0;
        person.weight = 52.0;
        person.birthDate.year = 1997;
        person.birthDate.month = 10;
        person.birthDate.day = 12;
        
        Season sn = AUTUMN;
        switch (sn) {
            case SPRING:
                break;
            case SUMMER:
                break;
            case AUTUMN:
                break;
            case WINTER:
                break;
            default:
                break;
        }
        
        for (int i = 0; i < 5; i++) {
            NSLog(@"i = %d", i);
        }
        
        int a = 0;
        while (a < 5) {
            NSLog(@"a = %d", a);
            a++;
        }
        
        int b = 0;
        while (YES) {
            if (b < 2) {
                NSLog(@"bの値は、2未満です。");
                continue;
            }
            if (b == 4) { break; }
            NSLog(@"bの値は、2以上です。");
            b++;
        }
    }
    
    return 0;
}

@end

//// MARK: - Class
//
//@interface Sankaku : NSObject {
//
//@public
//    int teihen;
//    int takasa;
//}
//
//@end
//
//@implementation Sankaku
//
//- (float)getAreaOfTriangle {
//    return (float) teihen * (float) takasa / 2;
////    float menseki;
////    menseki = (float) teihen * (float) takasa / 2;
////    return menseki;
//}
//
//- (void)sizeDouble {
//    takasa *= 2;
//    teihen *= 2;
//    return;
//}
//
//- (void)sizeBigger: (int)widthRatio : (int)heightRatio {
//    teihen *= widthRatio;
//    takasa *= heightRatio;
//    return;
//}
//
//// + : クラスメソッド : [Sankaku numSide]; : OK
//// - : インスタンスメソッド : [sankaku_A numSide]; NG
//+ (int)numSide {
//    return 3;
//}
//
//- (int)main {
//
//    @autoreleasepool {
//        Sankaku *sankaku_A = [[Sankaku alloc] init];
//        sankaku_A->teihen = 6;
//        sankaku_A->takasa = 4;
//
//        [sankaku_A sizeDouble];
//        [sankaku_A getAreaOfTriangle];
//        [sankaku_A sizeBigger:2:3];
//    }
//
//    return 0;
//}
//
//@end

//@interface Sankaku2: NSObject {
//
//@private
//    int teihen;
//    int takasa;
//}
//
//@property int teihen, takasa;
//@end

//@implementation Sankaku2
//
//- (void)setTeihenAndTakasa: (int)teihen : (int)takasa {
//    self->teihen = teihen;
//    self->takasa = takasa;
//}
//
//- (int)getTeihen {
//    return self->teihen;
//}
//
//- (int)getTakasa {
//    return self->takasa;
//}
//
//- (int)main {
//
//    @autoreleasepool {
//        Sankaku2 *s = [[Sankaku2 alloc] init];
//        [s setTeihenAndTakasa:6 :4];
//        [s getTeihen];
//        [s getTakasa];
//
//        // @propaerty @synthesize
//        [s setTakasa:5];
//        s.takasa = 5;
//        NSLog(@"%d", s.takasa);
//    }
//
//    return 0;
//}
//
//- (double)calcRate: (int)price :(float) disRate {
//    return (float) (price * 100) / disRate;
//}
//
//@end

