//
//  BNREmployee.m
//  BMITime
//
//  Created by Elena Maso Willen on 16/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@implementation BNREmployee

//Accessors for assests properties
- (void)setAssets:(NSArray *)a
{
    _assets = [a mutableCopy];
}

- (NSArray *)assets
{
    return [_assets copy];
}

- (void)addAssets:(BNRAsset *)a
{
    //Is assets nil?
    if (!_assets) {
        //Create the array
        _assets = [[NSMutableArray alloc] init];
    }
    [_assets addObject:a];
}

- (unsigned int)valueOfAssets
{
    //Sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets) {
        sum += [a resaleValue];
    }
    return sum;
}


- (double)yearsOfEmployment
{
    //DO I have a non-nil hireDate?
    if (self.hireDate) {
        //NSTimeInterval is the same as double
        NSDate *now = [NSDate date];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        return secs / 31227600.0;
    } else {
        return 0;
    }
}

- (float)bodyMassIndex
{
//    return 19.0;
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

- (NSString *)description
{
    //return [NSString stringWithFormat:@"<Employee %d>", self.employeeID];
    return [NSString stringWithFormat:@"<Employee %u: $%u in assets>", self.employeeID, self.valueOfAssets];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
