//
//  BNRStockHolding.h
//  Stocks
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRStockHolding : NSObject

{
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

- (float)purchaseSharePrice;
- (void)setPurchaseSharePrice:(float)value;
- (float)currentSharePrice;
- (void)setCurrentSharePrice:(float)value;
- (int)numberOfShares;
- (void)setNumberOfShares:(int)value;



- (float)costInDollars;
- (float)valueInDollars;

@end
