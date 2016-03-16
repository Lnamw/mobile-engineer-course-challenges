//
//  BNRStockHolding.m
//  Stocks
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRStockHolding.h"

@implementation BNRStockHolding

- (float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

- (void)setPurchaseSharePrice:(float)value
{
    _purchaseSharePrice = value;
}

- (float)currentSharePrice
{
    return _currentSharePrice;
}

- (void)setCurrentSharePrice:(float)value
{
    _currentSharePrice = value;
}

- (int)numberOfShares
{
    return _numberOfShares;
}

- (void)setNumberOfShares:(int)value
{
    _numberOfShares = value;
}



- (float)costInDollars
{
    return _purchaseSharePrice * _numberOfShares;
}
- (float)valueInDollars
{
    return _currentSharePrice * _numberOfShares;
}

@end








