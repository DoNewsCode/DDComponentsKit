//
//  TGTitlesComponent.h
//  DDTest
//
//  Created by donews on 2018/7/28.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "DDCollectionViewSectionComponent.h"
@class TGTitleModel;

@interface TGTitlesComponent : DDCollectionViewHeaderFooterSectionComponent

//internal var cellModels: [TitleModel]

@property (nonatomic, copy) NSArray<TGTitleModel *> *cellModels;

//weak internal var navigationController: UINavigationController?
@property (nonatomic, weak) UINavigationController *navigationController;
// 重写init
//override internal init()
// 重写prepareCollectionView
//override internal func prepareCollectionView()
//
//override internal func numberOfSections(in collectionView: UICollectionView) -> Int
//
//override internal func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
//
//override internal func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
//
//override internal func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)

@end
