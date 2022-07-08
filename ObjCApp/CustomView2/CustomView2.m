//
//  UIView+CustomView2.m
//  ObjCApp
//
//  Created by admin on 2022/07/08.
//

#import "CustomView2.h"

@interface CustomView2 ()
@property (nonatomic) CGFloat headerViewHeight;
@property (nonatomic) CGFloat textViewHeight;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *heightAnchor;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewHeightAnchor;
@property (weak, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIButton *openCloseButton;
@property (weak, nonatomic) IBOutlet UIView *contentView;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation CustomView2

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
    
    view = [NSBundle.mainBundle loadNibNamed:@"CustomView2" owner:self options:nil].firstObject;
    view.frame = self.bounds;
    [self addSubview:view];
    
    [[view.topAnchor constraintEqualToAnchor:self.topAnchor] setActive:YES];;
    [[view.leadingAnchor constraintEqualToAnchor:self.leadingAnchor] setActive:YES];
    [[view.trailingAnchor constraintEqualToAnchor:self.trailingAnchor] setActive:YES];
    [[view.bottomAnchor constraintEqualToAnchor:self.bottomAnchor] setActive:YES];
        
    self.textView.textContainerInset = UIEdgeInsetsMake(8, 16, 8, 16);
    self.textView.textContainer.lineFragmentPadding = 0;
    
    self.contentView.layer.borderColor = UIColor.systemGray5Color.CGColor;
    self.contentView.layer.borderWidth = 1;
    
    self.headerViewHeight = self.headerView.frame.size.height;
    
    [self.textView sizeToFit];
    CGFloat textViewHeight = ceilf(self.textView.frame.size.height);
    self.textViewHeight = textViewHeight;
}

- (void)setText:(NSString *)text {
    self.textView.text = text;
    // 高さ更新
    [self.textView sizeToFit];
    CGFloat textViewHeight = ceilf(self.textView.frame.size.height);
    self.textViewHeight = textViewHeight;
}

- (IBAction)handleOpenClose:(id)sender {
    [self.delegate didOpenClose:self];
}

- (CGFloat)calculateViewheight {
    return self.headerViewHeight + self.textViewHeight;
}

@end
