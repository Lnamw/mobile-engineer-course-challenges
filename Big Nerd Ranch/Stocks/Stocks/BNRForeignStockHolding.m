//
//  BNRForeignStockHolding.m
//  Stocks
//
//  Created by Elena Maso Willen on 16/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import "BNRForeignStockHolding.h"


@implementation BNRForeignStockHolding

- (float)costInDollars
{
    float CostInLocalCurrency = [super costInDollars];
    return CostInLocalCurrency * _conversionRate;
}

- (float)valueInDollars
{
    float ValueInLocalCurrency = [super valueInDollars];
    return ValueInLocalCurrency * _conversionRate;
}

@end
