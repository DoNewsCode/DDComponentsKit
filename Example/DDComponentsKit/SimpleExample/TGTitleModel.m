//
//  TGTitleModel.m
//  DDTest
//
//  Created by donews on 2018/7/28.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGTitleModel.h"

@interface TGTitleModel()

@property (nonatomic, readwrite, copy) NSString *title;
@property (nonatomic, readwrite, strong) Class vcClass;

@end

@implementation TGTitleModel

- (instancetype)initWithTitle:(NSString *)title vcClass:(Class)vcClass {
    if (self = [super init]) {
        _title = title;
        _vcClass = vcClass;
    }
    return self;
}

@end
