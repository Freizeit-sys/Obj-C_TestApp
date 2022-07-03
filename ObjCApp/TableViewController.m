//
//  TableViewController.m
//  ObjCApp
//
//  Created by admin on 2021/11/18.
//

#import "TableViewController.h"
#import "Item.h"
#import "CustomCell.h"
#import "DetailViewController.h"
#import "CollectionViewController.h"
#import "ButtonsViewController.h"

@interface TableViewController ()

@property (strong, nonatomic) NSMutableArray<Item *> *list;

@end

@implementation TableViewController

NSString *cellId = @"cellId";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    [self setupNavigationItems];
    [self setupList];
    
    // デフォルトのセルを使用
    //[self.tableView registerClass:UITableViewCell.class forCellReuseIdentifier:cellId];
    // カスタムセルを使用
    [self.tableView registerClass: CustomCell.class forCellReuseIdentifier: cellId];
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
}

- (void)setupNavigationItems {
    self.navigationItem.title = @"Objective-C";
    self.navigationItem.largeTitleDisplayMode = UINavigationItemLargeTitleDisplayModeAutomatic;
    self.navigationController.navigationBar.prefersLargeTitles = YES;
}

- (void)setupList {
    self.list = NSMutableArray.new;
    
    Item *item1 = Item.new;
    item1.title = @"Item1";
    item1.imageName = @"apple";
    
    Item *item2 = Item.new;
    item2.title = @"Item2 fsjafieiwjilenlnckankcnjasknckjdsa";
    item2.imageName = @"apple";
    
    Item *item3 = Item.new;
    item3.title = @"Item3 fjkdsajfkldsjfkjdasklfjklasjfklasjfkldjsakfljksdlajfakldsjafkklasjfldsj";
    item3.imageName = @"apple";
    
    Item *item4 = Item.new;
    item4.title = @"Item4";
    item4.imageName = @"apple";
    
    [self.list addObject:item1];
    [self.list addObject:item2];
    [self.list addObject:item3];
    [self.list addObject:item4];
}

// MARK: - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableview numberOfRowsInSection:(NSInteger)section {
    return self.list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CustomCell *cell = (CustomCell *) [tableView dequeueReusableCellWithIdentifier: cellId forIndexPath: indexPath];
    cell.delegate = self;
    
    Item *item = self.list[indexPath.row];
    cell.titleLabel.text = item.title;
    cell.imgView.image = [UIImage imageNamed:item.imageName];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewAutomaticDimension;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 72;
}

// MARK: - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0: {
            DetailViewController *detailVc = DetailViewController.new;
            detailVc.item = self.list[indexPath.row];
            [self.navigationController pushViewController:detailVc animated:true];
            break;
        }
        case 1: {
            CollectionViewController *collectionVc = [[CollectionViewController alloc] initWithCollectionViewLayout:UICollectionViewFlowLayout.new];
            [self.navigationController pushViewController:collectionVc animated:true];
            break;
        }
        case 2: {
            ButtonsViewController *buttonsVc = ButtonsViewController.new;
            [self.navigationController pushViewController:buttonsVc animated:YES];
            break;
        }
        default:
            break;
    }
}

// MARK: - CustomCellDelegate

- (void)didSelectedCell:(UITableViewCell *)cell {
    NSLog(@"タップしました");
}

@end
