//
//  TGImageModel.m
//  DDTest
//
//  Created by donews on 2018/7/28.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGImageModel.h"
#import <UIKit/UIKit.h>

@interface TGImageModel()

@property (nonatomic, assign) CGSize imgSize;

@end

@implementation TGImageModel

- (instancetype)initWithImageName:(NSString *)imageName vcClass:(Class)vcClass {
    if (self = [super init]) {
        self.imageName = imageName;
        self.vcClass = vcClass;
    }
    return self;
}


- (UIImage *)image {
    if (_image == nil) {
       
        UIColor *color = [UIColor greenColor];
        UIGraphicsBeginImageContext(self.imgSize);
        [color setFill];
        [[UIBezierPath bezierPathWithRect:CGRectMake(0, 0, self.imgSize.width, self.imgSize.height)] fill];
        _image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    return _image;
}

#pragma mark - Getters & Setters
- (CGSize)imgSize {
    return CGSizeMake(80, 80);
}

@end
