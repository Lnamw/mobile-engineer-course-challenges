//
//  PlayingCardCellCollectionViewCell.m
//  Collections
//
//  Created by Elena Maso Willen on 31/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "PlayingCardCellCollectionViewCell.h"

@implementation PlayingCardCellCollectionViewCell

- (void)setCardImage:(UIImage *)cardImage {
    if (_cardImage != cardImage) {
        _cardImage = cardImage;
    }
    self.imageView.image = _cardImage;
}

@end
