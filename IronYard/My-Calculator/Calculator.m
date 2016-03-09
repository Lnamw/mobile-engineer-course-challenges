//
//  Calculator.m
//  My-Calculator
//
//  Created by Elena Maso Willen on 03/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (void) setAccumulator:(double)value {
    accumulator = value;
}

- (void) clear {
    accumulator = 0;
}

- (double)accumulator
{
    return accumulator;
}


- (void)add:(double)value {
    accumulator += value;
}

- (void)substract:(double)value {
    accumulator -= value;
}

- (void)multiply:(double)value {
    accumulator *= value;
}

- (void)divide:(double)value {
    accumulator /= value;
}


@end
