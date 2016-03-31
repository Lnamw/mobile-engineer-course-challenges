//
//  PlayingCardHeaderCollectionReusableView.h
//  Collections
//
//  Created by Elena Maso Willen on 31/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PlayingCardHeaderCollectionReusableView : UICollectionReusableView

@property (weak, nonatomic) IBOutlet UIImageView *suitImageView;
@property (weak, nonatomic) IBOutlet UILabel *deckLabel;

- (void)setDeckText:(NSString *)text;

@end
