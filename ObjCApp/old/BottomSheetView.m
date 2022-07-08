//
//  BottomSheetView.m
//  ObjCApp
//
//  Created by admin on 2021/11/20.
//

#import "BottomSheetView.h"

@interface BottomSheetView ()

@end

@implementation BottomSheetView

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = frame;
    }
    return self;
}

- (void)setupViews {
    self.backgroundColor = UIColor.whiteColor;
}



@end
