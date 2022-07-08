//
//  DetailViewController.m
//  ObjCApp
//
//  Created by admin on 2021/11/20.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeNever;
        
    _titleLabel = [[UILabel alloc] init];
    _titleLabel.translatesAutoresizingMaskIntoConstraints = NO;
    _titleLabel.font = [UIFont systemFontOfSize:13 weight:UIFontWeightRegular];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.numberOfLines = 0;
    
    _imageView = [[UIImageView alloc] init];
    _imageView.translatesAutoresizingMaskIntoConstraints = NO;
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    _imageView.clipsToBounds = true;
    
    [self.view addSubview:_titleLabel];
    [self.view addSubview:_imageView];
    
    [NSLayoutConstraint activateConstraints:@[
        [_titleLabel.topAnchor constraintEqualToAnchor:_imageView.bottomAnchor constant:10],
        [_titleLabel.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:16],
        [_titleLabel.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-16],
    ]];
    
    CGFloat imageViewHeight = self.view.frame.size.height / 3.8f;
    
    [NSLayoutConstraint activateConstraints:@[
        [_imageView.topAnchor constraintEqualToAnchor:self.view.safeAreaLayoutGuide.topAnchor],
        [_imageView.leftAnchor constraintEqualToAnchor:self.view.leftAnchor],
        [_imageView.rightAnchor constraintEqualToAnchor:self.view.rightAnchor],
        [_imageView.heightAnchor constraintEqualToConstant:imageViewHeight],
    ]];
    
    [self setupItemData];
}

- (void)setupItemData {
//    if (self.item != nil) {
    if (self.item) {
        NSLog(@"not nil");
        _titleLabel.text = self.item.title;
        
        UIImage *image = [UIImage imageNamed:self.item.imageName];
        [_imageView setImage:image];
    } else {
        NSLog(@"nil");
    }
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleDefault;
}

@end
