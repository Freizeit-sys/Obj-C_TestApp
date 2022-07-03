//
//  ViewController.m
//  ObjCApp
//
//  Created by admin on 2021/11/18.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setupNavigationItems];
}

- (void)setupNavigationItems {
    self.navigationItem.title = @"Objective-C";
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}

@end
