//
//  TGImagesComponent.h
//  DDTest
//
//  Created by donews on 2018/7/30.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "DDCollectionViewSectionComponent.h"
#import "TGImageModel.h"

@interface TGImagesComponent : DDCollectionViewHeaderFooterSectionComponent

@property (nonatomic, copy) NSArray<TGImageModel *> *images;

@end
