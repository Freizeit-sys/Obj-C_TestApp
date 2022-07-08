//
//  UIViewController+AccViewController_m.m
//  ObjCApp
//
//  Created by admin on 2022/07/02.
//

#import "AccViewController.h"

@interface AccViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *menuViewHeightAnchor;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *contentViewHeightAnchor;


@property (nonatomic) NSLayoutConstraint* textView1HeightAnchor;
@property (nonatomic) NSLayoutConstraint* textView2HeightAnchor;
@property (nonatomic) NSLayoutConstraint* textView3HeightAnchor;
@property (nonatomic) NSLayoutConstraint* menuView1HeightAnchor;
@property (nonatomic) NSLayoutConstraint* menuView2HeightAnchor;
@property (nonatomic) NSLayoutConstraint* menuView3HeightAnchor;
@property (nonatomic) NSLayoutConstraint* contentView1HeightAnchor;
@property (nonatomic) NSLayoutConstraint* contentView2HeightAnchor;
@property (nonatomic) NSLayoutConstraint* contentView3HeightAnchor;
@property (weak, nonatomic) IBOutlet UIView* menuView1;
@property (weak, nonatomic) IBOutlet UIView *contentView1;
@property (weak, nonatomic) IBOutlet UIView* menuView2;
@property (weak, nonatomic) IBOutlet UIView *contentView2;
@property (weak, nonatomic) IBOutlet UIView* menuView3;
@property (weak, nonatomic) IBOutlet UIView *contentView3;
@property (weak, nonatomic) IBOutlet UITextView *textView1;
@property (weak, nonatomic) IBOutlet UITextView *textView2;
@property (weak, nonatomic) IBOutlet UITextView *textView3;
@end

@implementation AccViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
}

-(IBAction)handleTap:(id)sender {
    NSLog(@"aaa");
    switch ([sender tag]) {
        case 0:
        {
            //CGFloat height = [_textView1 sizeThatFits:CGSizeMake(_textView1.bounds.size.width, MAXFLOAT)].height;
            //[_textView1 sizeToFit];
            CGFloat height = [_textView1 systemLayoutSizeFittingSize:CGSizeMake(_textView1.frame.size.width, MAXFLOAT)].height + 10;
            NSLog(@"%.1f", height);

            _menuViewHeightAnchor.constant = _menuViewHeightAnchor.constant == 52 ? 52 + height : 52;
            _contentViewHeightAnchor.constant = _contentViewHeightAnchor == 0 ? height : 0;
//            _menuView1HeightAnchor.constant = _menuView1HeightAnchor.constant == 52 ? 124 : 52;
//            _contentView1HeightAnchor.constant = _contentView1HeightAnchor.constant == 0 ? 72 : 0;
//            _textView1HeightAnchor.constant = _textView1HeightAnchor.constant == 0 ? 72 : 0;
            [UIView animateWithDuration:0.4 animations:^{
                [self.view layoutIfNeeded];
            }];
            break;
        }
        case 1:
        {
            _menuView2HeightAnchor.constant = _menuView2HeightAnchor.constant == 52 ? 124 : 52;
            _contentView2HeightAnchor.constant = _contentView2HeightAnchor.constant == 0 ? 72 : 0;
            _textView2HeightAnchor.constant = _textView2HeightAnchor.constant == 0 ? 72 : 0;
            [UIView animateWithDuration:0.4 animations:^{
                [self.view layoutIfNeeded];
            }];
            break;
        }
        case 2:
        {
            _menuView3HeightAnchor.constant = _menuView3HeightAnchor.constant == 52 ? 124 : 52;
            _contentView3HeightAnchor.constant = _contentView3HeightAnchor.constant == 0 ? 72 : 0;
            _textView3HeightAnchor.constant = _textView3HeightAnchor.constant == 0 ? 72 : 0;
            [UIView animateWithDuration:0.4 animations:^{
                [self.view layoutIfNeeded];
            }];
            break;
        }
        default:
        {
            break;
        }
    }
}

@end
