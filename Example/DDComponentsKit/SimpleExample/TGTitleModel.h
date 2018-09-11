//
//  TGTitleModel.h
//  DDTest
//
//  Created by donews on 2018/7/28.
//  Copyright © 2018年 donews. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TGTitleModel : NSObject

@property (nonatomic, readonly, copy) NSString *title;
@property (nonatomic, readonly, strong) Class vcClass;

- (instancetype)initWithTitle:(NSString *)title vcClass:(Class)vcClass;

@end
