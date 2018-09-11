//
//  TGTitlesComponent.m
//  DDTest
//
//  Created by donews on 2018/7/28.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGTitlesComponent.h"
#import "TGTitleCollectionViewCell.h"
#import "TGTitleModel.h"

@implementation TGTitlesComponent

- (instancetype)init {
    if (self = [super init]) {
        self.size = CGSizeMake(DDComponentAutomaticDimension, 60);
        self.itemSpacing = 5;
        self.lineSpacing = 5;
        self.sectionInset = UIEdgeInsetsMake(10, 15, 10, 15);
    }
    return self;
}

// 重写prepareCollectionView
- (void)prepareCollectionView {
    [super prepareCollectionView];
    
    [self.collectionView registerClass:[TGTitleCollectionViewCell class] forCellWithReuseIdentifier:[[TGTitleCollectionViewCell class] description]];
}

// 重写numberOfSectionsInCollectionView
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

// 重写 collectionView:numberOfItemsInSection:
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.cellModels.count;
}

// 重写cellForItemAtIndexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    TGTitleCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[[TGTitleCollectionViewCell class] description] forIndexPath:indexPath];
    cell.titleLabel.text = self.cellModels[indexPath.item].title;
    cell.backgroundColor = [UIColor lightGrayColor];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    Class vcClass = self.cellModels[indexPath.item].vcClass;
    if (vcClass) {
        [self.navigationController pushViewController:[vcClass new] animated:YES];
    }
}

@end
