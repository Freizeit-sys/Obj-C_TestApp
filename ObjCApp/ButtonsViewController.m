//
//  UIViewController+ButtonsViewController_m.m
//  ObjCApp
//
//  Created by admin on 2022/01/16.
//

#import "ButtonsViewController.h"

@interface ButtonsViewController ()

@property (nonatomic, strong) UIButton *button;

@end

@implementation ButtonsViewController
    
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    UIButtonConfiguration * config = [UIButtonConfiguration plainButtonConfiguration];
    //config.baseBackgroundColor =
    config.baseForegroundColor = UIColor.redColor;
    config.background.cornerRadius = 44.0 / 2.0;
    config.background.strokeWidth = 1.0;
    config.background.strokeColor = UIColor.redColor;
    config.title = @"Sample text";
    //config.titlePadding =
    config.image = [UIImage imageNamed:@"info"];
    config.imagePlacement = NSDirectionalRectEdgeLeading;
    config.imagePadding = 4;
    
    _button = [UIButton buttonWithType:UIButtonTypeSystem];
    _button.translatesAutoresizingMaskIntoConstraints = NO;
    [_button setConfiguration:config];
    

    [_button addTarget:self action:@selector(handleTap:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_button];
    
    [NSLayoutConstraint activateConstraints:@[
        [_button.leftAnchor constraintEqualToAnchor:self.view.leftAnchor constant:16],
        [_button.rightAnchor constraintEqualToAnchor:self.view.rightAnchor constant:-16],
        [_button.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor],
        [_button.heightAnchor constraintEqualToConstant:44]
    ]];
}

- (void)handleTap:(UIButton *)button {
    NSLog(@"did tap");
}

@end
