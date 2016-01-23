//
//  IngredientsViewCell.h
//  
//
//  Created by Jiaqi Wu on 1/23/16.
//  Code obtained from https://github.com/AshFurrow/AFTabledCollectionView by https://ashfurrow.com/blog/putting-a-uicollectionview-in-a-uitableviewcell/
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

//@interface IngredientsViewCell : NSObject
@interface AFIndexedCollectionView : UICollectionView

@property (nonatomic, strong) NSIndexPath *indexPath;

@end

static NSString *CollectionViewCellIdentifier = @"CollectionViewCellIdentifier";



@interface IngredientsViewCell : UITableViewCell

@property (nonatomic, strong) AFIndexedCollectionView *collectionView;

- (void)setCollectionViewDataSourceDelegate:(id<UICollectionViewDataSource, UICollectionViewDelegate>)dataSourceDelegate indexPath:(NSIndexPath *)indexPath;

@end
