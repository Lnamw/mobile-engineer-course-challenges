//
//  Observer.m
//  KVO
//
//  Created by Elena Maso Willen on 15/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "Observer.h"

@implementation Observer

-(id)initWithSettings:(Settings *)inSettings
{
    self = [super init];
    if (self) {
        _mySettings = inSettings;
        [_mySettings addObserver:self forKeyPath:@"volume" options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld) context:nil];
        [_mySettings addObserver:self forKeyPath:@"brightness" options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld) context:nil];
    }
    return self;
}

-(void)observerValueForKeyPath:

@end
