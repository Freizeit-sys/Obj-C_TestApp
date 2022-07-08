//
//  CustomCell.h
//  ObjCApp
//
//  Created by admin on 2021/11/18.
//

#import <UIKit/UIKit.h>

@protocol CustomCellDelegate <NSObject>

- (void)didSelectedCell: (UITableViewCell *) cell;

@end

@interface CustomCell : UITableViewCell

@property (weak, nonatomic) id<CustomCellDelegate> delegate;

@property (strong, nonatomic) UIView *containerView;

@property (strong, nonatomic) UIImageView *imgView;

@property (strong, nonatomic) UILabel *titleLabel;

@property (strong, nonatomic) UITapGestureRecognizer *tapGesture;

@end
