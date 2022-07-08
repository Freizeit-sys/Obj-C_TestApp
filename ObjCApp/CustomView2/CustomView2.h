//
//  UIView+CustomView2.h
//  ObjCApp
//
//  Created by admin on 2022/07/08.
//

#import <UIKit/UIKit.h>

@protocol CustomView2Delegate <NSObject>
- (void)didOpenClose:(UIView *)view;
@end

IB_DESIGNABLE
@interface CustomView2 : UIView
@property (weak, nonatomic) id <CustomView2Delegate> delegate;
- (void)setText:(NSString *)text;
- (CGFloat)calculateViewheight;
@end


