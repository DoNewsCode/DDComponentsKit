//
//  TGTextCollectionReusableView.m
//  DDTest
//
//  Created by donews on 2018/7/30.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGTextCollectionReusableView.h"

@implementation TGTextCollectionReusableView

- (UILabel *)textLabel {
    if (_textLabel == nil) {
        _textLabel = [[UILabel alloc] init];
        [self addSubview:_textLabel];
    }
    return _textLabel;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.textLabel.frame = self.bounds;
}

@end
