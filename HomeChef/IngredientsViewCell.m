//
//  IngredientsViewCell.m
//  
//
//  Created by Jiaqi Wu on 1/23/16.
//  Code obtained from https://github.com/AshFurrow/AFTabledCollectionView by https://ashfurrow.com/blog/putting-a-uicollectionview-in-a-uitableviewcell/
//
/*
#import "IngredientsViewCell.h"

@implementation AFIndexedCollectionView

@end

@implementation IngredientsViewCell
 /* Adding collection view to the cell.
  * We will create an instance of IngredientsViewCell using a standard UICollectionViewFlowLayout in the cell's initializer.
  */

/*
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if (!(self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) return nil;
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.sectionInset = UIEdgeInsetsMake(10, 10, 9, 10);
    layout.itemSize = CGSizeMake(44, 44);
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    self.collectionView = [[AFIndexedCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:layout];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:CollectionViewCellIdentifier];
    self.collectionView.backgroundColor = [UIColor whiteColor];
    self.collectionView.showsHorizontalScrollIndicator = NO;
    [self.contentView addSubview:self.collectionView];
    
    return self;
}

/* Adjusting the side of the collection view to fill cell in layoutSubViews
 */

/*
-(void)layoutSubviews
{
    [super layoutSubviews];
    
    self.collectionView.frame = self.contentView.bounds;
}

- (void)setCollectionViewDataSourceDelegate:(id<UICollectionViewDataSource, UICollectionViewDelegate>)dataSourceDelegate indexPath:(NSIndexPath *)indexPath
{
    self.collectionView.dataSource = dataSourceDelegate;
    self.collectionView.delegate = dataSourceDelegate;
    self.collectionView.indexPath = indexPath;
    
    [self.collectionView reloadData];
}

@end
*/
