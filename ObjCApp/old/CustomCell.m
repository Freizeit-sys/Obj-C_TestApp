//
//  CustomCell.m
//  ObjCApp
//
//  Created by admin on 2021/11/18.
//

#import "CustomCell.h"

@implementation CustomCell : UITableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if (self) {
        [self comminInit];
    }
        
    return self;
}

- (void)comminInit {
    self.containerView = [[UIView alloc] init];
    self.containerView.translatesAutoresizingMaskIntoConstraints = false;
    [self.contentView addSubview:self.containerView];
    
    self.imgView = [[UIImageView alloc] init];
    self.imgView.translatesAutoresizingMaskIntoConstraints = false;
    self.imgView.backgroundColor = UIColor.lightGrayColor;
    self.imgView.contentMode = UIViewContentModeScaleAspectFit;
    self.imgView.clipsToBounds = true;
    self.imgView.userInteractionEnabled = YES;
    [self.containerView addSubview:self.imgView];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.translatesAutoresizingMaskIntoConstraints = false;
    self.titleLabel.numberOfLines = 0;
    [self.containerView addSubview:self.titleLabel];
    
    self.tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap)];
    self.tapGesture.cancelsTouchesInView = YES;
    
    [self.imgView addGestureRecognizer:self.tapGesture];
    
    CGFloat imgSize = 56.0;
    
    [NSLayoutConstraint activateConstraints:@[
        [self.containerView.topAnchor constraintEqualToAnchor:self.contentView.topAnchor constant:8.0],
        [self.containerView.leadingAnchor constraintEqualToAnchor:self.contentView.leadingAnchor constant:16.0],
        [self.containerView.bottomAnchor constraintEqualToAnchor:self.contentView.bottomAnchor constant:-8.0],
        [self.containerView.rightAnchor constraintEqualToAnchor:self.contentView.rightAnchor constant:-16.0]
    ]];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.imgView.topAnchor constraintEqualToAnchor:self.containerView.topAnchor],
        [self.imgView.bottomAnchor constraintLessThanOrEqualToAnchor:self.containerView.bottomAnchor],
        [self.imgView.leftAnchor constraintEqualToAnchor:self.containerView.leftAnchor],
        [self.imgView.widthAnchor constraintEqualToConstant:imgSize],
        [self.imgView.heightAnchor constraintEqualToConstant:imgSize]
    ]];
    
    [NSLayoutConstraint activateConstraints:@[
        [self.titleLabel.topAnchor constraintEqualToAnchor:self.containerView.topAnchor],
        [self.titleLabel.leftAnchor constraintEqualToAnchor:self.imgView.rightAnchor constant:10.0],
        [self.titleLabel.bottomAnchor constraintEqualToAnchor:self.containerView.bottomAnchor],
        [self.titleLabel.rightAnchor constraintEqualToAnchor:self.containerView.rightAnchor constant:-10]
    ]];
}

- (void)handleTap {
    [self.delegate didSelectedCell: self];
}

@end
