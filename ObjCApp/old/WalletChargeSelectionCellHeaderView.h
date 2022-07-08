//
//  UIViewController+WalletChargeSelectionCellHeaderView.h
//  ObjCApp
//
//  Created by admin on 2022/06/05.
//

#import <UIKit/UIKit.h>

@protocol WalletChargeSelectionCellHeaderViewDelegate <NSObject>

@required
- (void)didTapClose;

@end

@interface WalletChargeSelectionCellHeaderView : UICollectionReusableView

@property (weak, nonatomic) id <WalletChargeSelectionCellHeaderViewDelegate> delegate;

@end
