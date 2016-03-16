//
//  BNRAsset.m
//  BMITime
//
//  Created by Elena Maso Willen on 16/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

- (NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%u>", self.label, self.resaleValue];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
