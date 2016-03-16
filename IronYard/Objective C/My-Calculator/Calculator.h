//
//  Calculator.h
//  My-Calculator
//
//  Created by Elena Maso Willen on 03/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

{
    double accumulator;
}

//acumulator methods
- (void)setAccumulator:(double)value;
- (void)clear;
- (double)accumulator;

//arithmetic methods
- (void)add:(double)value;
- (void)substract:(double)value;
- (void)multiply:(double)value;
- (void)divide:(double)value;

@end
