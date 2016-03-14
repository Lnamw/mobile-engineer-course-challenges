//
//  AppleBox.m
//  Apples protocol
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "AppleBox.h"

@implementation AppleBox

-(void)appleBeingBought
{
    _numberOfApples--;
    NSLog(@"Buying an Apple. %d Apples left", _numberOfApples);
    if (_numberOfApples == 0) {
        [self.delegate appleBoxIsEmpty];
    }
}
@end
