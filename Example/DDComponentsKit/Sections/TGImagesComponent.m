//
//  TGImagesComponent.m
//  DDTest
//
//  Created by donews on 2018/7/30.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGImagesComponent.h"
#import "TGImageCollectionViewCell.h"

@interface TGImagesComponent()

@property (nonatomic, weak) UINavigationController *navigationController;
///
@property (nonatomic, assign) CGSize imgSize;

@end

@implementation TGImagesComponent

- (instancetype)init {
    if (self = [super init]) {
        self.size = self.imgSize;
        self.lineSpacing = 5;
        self.itemSpacing = 5;
    }
    return self;
}

- (void)prepareCollectionView {
    [super prepareCollectionView];
    
    [self.collectionView registerClass:[TGImageCollectionViewCell class] forCellWithReuseIdentifier:[[TGImageCollectionViewCell class] description]];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.images.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TGImageCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[[TGImageCollectionViewCell class] description] forIndexPath:indexPath];
    cell.imgView.image = self.images[indexPath.item].image;
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    Class vcClass = self.images[indexPath.item].vcClass;
    if (vcClass) {
        [self.navigationController pushViewController:[vcClass new] animated:YES];
    }
}

#pragma mark - Getters & Setters
- (CGSize)imgSize {
    return CGSizeMake(80, 80);
}

@end
