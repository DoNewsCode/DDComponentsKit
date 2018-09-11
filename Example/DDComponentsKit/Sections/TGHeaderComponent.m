//
//  TGHeaderComponent.m
//  DDTest
//
//  Created by donews on 2018/7/30.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGHeaderComponent.h"
#import "TGTextCollectionReusableView.h"

@implementation TGHeaderComponent

- (instancetype)init {
    if (self = [super init]) {
        self.headerSize = CGSizeMake(DDComponentAutomaticDimension, 50);
    }
    return self;
}

- (void)prepareCollectionView {
    [super prepareCollectionView];
    
    [self.collectionView registerClass:[TGTextCollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:[[TGTextCollectionReusableView class] description]];
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    
    TGTextCollectionReusableView *view = [collectionView dequeueReusableSupplementaryViewOfKind:kind withReuseIdentifier:[[TGTextCollectionReusableView class] description] forIndexPath:indexPath];
    view.textLabel.textAlignment = NSTextAlignmentLeft;
    view.textLabel.font = [UIFont systemFontOfSize:17];
    view.textLabel.text = self.text;
    view.backgroundColor = [UIColor orangeColor];
    return view;
}

@end
