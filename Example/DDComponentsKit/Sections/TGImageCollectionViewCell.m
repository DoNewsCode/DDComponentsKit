//
//  TGImageCollectionViewCell.m
//  DDTest
//
//  Created by donews on 2018/7/30.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGImageCollectionViewCell.h"

@implementation TGImageCollectionViewCell

#pragma mark - Getters & Setters
- (UIImageView *)imgView {
    if (_imgView == nil) {
        _imgView = [[UIImageView alloc] init];
        _imgView.contentMode = UIViewContentModeCenter;
        [self.contentView addSubview:_imgView];
    }
    return _imgView;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.imgView.frame = self.bounds;
}

@end
