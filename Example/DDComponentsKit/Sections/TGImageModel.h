//
//  TGImageModel.h
//  DDTest
//
//  Created by donews on 2018/7/28.
//  Copyright © 2018年 donews. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TGImageModel : NSObject

/// 图片的名字
@property (nonatomic, copy) NSString *imageName;
///
@property (nonatomic, strong) UIImage *image;
///
@property (nonatomic, strong) Class vcClass;
///
- (instancetype)initWithImageName:(NSString *)imageName vcClass:(Class)vcClass;

@end
