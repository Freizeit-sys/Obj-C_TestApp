//
//  ViewController.m
//  ObjCApp
//
//  Created by admin on 2021/11/18.
//

#import "ViewController.h"
#import "CustomView2.h"

@interface ViewController () <CustomView2Delegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *customView222HeightAnchor;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *customView22HeightAnchor;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *customView2HeightAnchor;
@property (weak, nonatomic) IBOutlet CustomView2 *customView222;
@property (weak, nonatomic) IBOutlet CustomView2 *customView22;
@property (weak, nonatomic) IBOutlet CustomView2 *customView2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setupNavigationItems];
    
    [self.customView2 setText:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.\nLorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "];
    [self.customView22 setText:@"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt"];
    [self.customView222 setText:@"Lorem ipsum dolor sit er elit lamet,"];
    
    self.customView2.delegate = self;
    self.customView22.delegate = self;
    self.customView222.delegate = self;
}

- (void)setupNavigationItems {
    self.navigationItem.title = @"Objective-C";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}

- (void)didOpenClose:(UIView *)view {
    if ([view isEqual:self.customView2]) {
        [self.view layoutIfNeeded];
        _customView2HeightAnchor.constant = _customView2HeightAnchor.constant == 52 ? [self.customView2 calculateViewheight] : 52;
        [UIView animateWithDuration:0.4 animations:^{
            [self.view layoutIfNeeded];
        } completion:^(BOOL finished) {

        }];
    }
    
    if ([view isEqual:self.customView22]) {
        [self.view layoutIfNeeded];
        _customView22HeightAnchor.constant = _customView22HeightAnchor.constant == 52 ? [self.customView22 calculateViewheight] : 52;
        [UIView animateWithDuration:0.4 animations:^{
            [self.view layoutIfNeeded];
        } completion:^(BOOL finished) {

        }];
    }
    
    if ([view isEqual:self.customView222]) {
        [self.view layoutIfNeeded];
        _customView222HeightAnchor.constant = _customView222HeightAnchor.constant == 52 ? [self.customView222 calculateViewheight] : 52;
        [UIView animateWithDuration:0.4 animations:^{
            [self.view layoutIfNeeded];
        } completion:^(BOOL finished) {

        }];
    }
}

@end
