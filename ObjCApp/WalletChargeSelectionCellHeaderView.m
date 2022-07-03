//
//  UIViewController+WalletChargeSelectionCellHeaderView.m
//  ObjCApp
//
//  Created by admin on 2022/06/05.
//

#import "WalletChargeSelectionCellHeaderView.h"

@interface WalletChargeSelectionCellHeaderView ()

@property (weak, nonatomic) IBOutlet UILabel* titleLabel;
@property (weak, nonatomic) IBOutlet UIButton* closeButton;

@end

@implementation WalletChargeSelectionCellHeaderView

- (void)awakeFromNib
{
    [super awakeFromNib];
    [self commonInit];
}

- (void)commonInit
{
//    self.titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
//    self.titleLabel.text = @"チャージ方法選択";
//    self.titleLabel.textColor = [UIColor blackColor];
//    self.titleLabel.textAlignment = NSTextAlignmentCenter;
//    self.titleLabel.font = [UIFont systemFontOfSize:17 weight:UIFontWeightBold];
//
//    [NSLayoutConstraint activateConstraints:@[
//        [self.titleLabel.topAnchor constraintEqualToAnchor:self.topAnchor],
//        [self.titleLabel.leadingAnchor constraintEqualToAnchor:self.leadingAnchor],
//        [self.titleLabel.trailingAnchor constraintGreaterThanOrEqualToAnchor:self.closeButton.leadingAnchor constant:-16],
//        [self.titleLabel.bottomAnchor constraintEqualToAnchor:self.bottomAnchor constant:-8]
//    ]];
    
//    self.closeButton.translatesAutoresizingMaskIntoConstraints = NO;
//    self.closeButton.tintColor = [UIColor blackColor];
//    UIImage* iconImage = [[UIImage alloc] initWithContentsOfFile:@"info"];
//    [self.closeButton setImage:iconImage forState:UIControlStateNormal];
    [self.closeButton addTarget:self
                         action:@selector(tappedCloseButton)
               forControlEvents:UIControlEventTouchUpInside];
    
    
}

- (void)tappedCloseButton
{
    [self.delegate didTapClose];
}

@end
