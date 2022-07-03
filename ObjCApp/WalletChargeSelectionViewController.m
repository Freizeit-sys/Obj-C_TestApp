//
//  UIViewController+WalletChargeSelectionViewController_m.m
//  ObjCApp
//
//  Created by admin on 2022/06/05.
//

#import "WalletChargeSelectionViewController.h"
#import "WalletChargeSelectionCellHeaderView.h"

@interface WalletChargeSelectionViewController () <
UICollectionViewDataSource,
UICollectionViewDelegate,
UICollectionViewDelegateFlowLayout,
WalletChargeSelectionCellHeaderViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView* collectionView;

@end

@implementation WalletChargeSelectionViewController

BOOL isClosed = NO;

NSString* wcsHeaderId = @"wcsHeaderId";
NSString* wcsCellId = @"wcsCellId";

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;

    
    [self.collectionView registerNib:[UINib nibWithNibName:@"WalletChargeSelectionHeaderView" bundle:nil]
forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
      withReuseIdentifier:wcsHeaderId];
    
//    [self.collectionView registerClass:WalletChargeSelectionCellHeaderView.class
//            forSupplementaryViewOfKind:UICollectionElementKindSectionHeader
//                   withReuseIdentifier:wcsHeaderId];
    
    [self.collectionView registerClass:UICollectionViewCell.class
            forCellWithReuseIdentifier:wcsCellId];
}

#pragma mark - UICollectionViewDataSource

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if (isClosed) {
        return 4;
    } else {
        return 5;
    }
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    WalletChargeSelectionCellHeaderView* header = [collectionView dequeueReusableSupplementaryViewOfKind:kind
                                                                                     withReuseIdentifier:wcsHeaderId
                                                                                            forIndexPath:indexPath];
    return header;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell* cell = [collectionView dequeueReusableCellWithReuseIdentifier:wcsCellId
                                                                           forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blackColor];
    return cell;
}

#pragma mark - UICollectionViewDelegateFlowLayout

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout referenceSizeForHeaderInSection:(NSInteger)section
{
    return CGSizeMake(self.view.frame.size.width, 68);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    CGFloat itemCount = isClosed ? 4 : 5;
    CGFloat minimumLineSpace = 8;
    CGFloat screenWidth = self.view.frame.size.width;
    return CGSizeMake((screenWidth - minimumLineSpace) / itemCount, 89);
}

#pragma mark - UICollectionViewDelegate

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - WalletChargeSelectionCellHeaderViewDelegate

- (void)didTapClose
{
    __weak typeof(self) weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakSelf dismissViewControllerAnimated:YES completion:nil];
    });
}

@end
