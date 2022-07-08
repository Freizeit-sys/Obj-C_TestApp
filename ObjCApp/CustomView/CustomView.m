//
//  CustomView.m
//  ObjCApp
//
//  Created by admin on 2022/07/06.
//

#import <UIKit/UIKit.h>
#import "CustomView.h"

@interface CustomView ()
@property (strong, nonatomic) IBOutlet UIView *view;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation CustomView

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self commonInit];
    }
    return  self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return  self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self commonInit];
    }
    return self;
}


- (void)commonInit
{
    UIView* view;
    view.translatesAutoresizingMaskIntoConstraints = NO;
    
    view = [NSBundle.mainBundle loadNibNamed:@"TestTextView" owner:self options:nil].firstObject;
    view.frame = self.bounds;
    [self addSubview:view];
    
    [[view.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];;
    [[view.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[view.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    [[view.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
}

@end
