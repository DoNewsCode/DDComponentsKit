//
//  TGTextComponent.m
//  DDTest
//
//  Created by donews on 2018/7/28.
//  Copyright © 2018年 donews. All rights reserved.
//

#import "TGTextComponent.h"
#import "TGTitleCollectionViewCell.h"
#import "TGTitleModel.h"

@implementation TGTextComponent

// Private Method
- (NSAttributedString *)_attributedText:(NSString *)text {
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineHeightMultiple = 1.5;
    NSDictionary *dict = @{
                           NSFontAttributeName:[UIFont systemFontOfSize:12],
                           NSParagraphStyleAttributeName:paragraph
                           };
    NSMutableAttributedString *attrText = [[NSMutableAttributedString alloc] initWithString:text attributes:dict];
    return attrText;
}

// 重写cellForItemAtIndexPath
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    TGTitleCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:[[TGTitleCollectionViewCell class] description] forIndexPath:indexPath];
    cell.titleLabel.attributedText = [self _attributedText:self.cellModels[indexPath.item].title];
    cell.titleLabel.numberOfLines = 0;
    cell.backgroundColor = [UIColor lightGrayColor];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSString *text = self.cellModels[indexPath.item].title;
    CGSize tempSize = CGSizeMake(collectionView.frame.size.width - self.sectionInset.left - self.sectionInset.right, MAXFLOAT);
    CGSize textSize = [[self _attributedText:text] boundingRectWithSize:tempSize options:NSStringDrawingUsesLineFragmentOrigin context:nil].size;
    return textSize;
}

@end
