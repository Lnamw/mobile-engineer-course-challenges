//
//  main.m
//  Stocks
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRStockHolding.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        BNRStockHolding *firstInstanceOfStockHolding = [[BNRStockHolding alloc] init];
        BNRStockHolding *secondInstanceOfStockHolding = [[BNRStockHolding alloc] init];
        BNRStockHolding *thirdInstanceOfStockHolding = [[BNRStockHolding alloc] init];
        

        NSMutableArray *arrayOfStockHolding = [NSMutableArray array];
        
        [arrayOfStockHolding addObject:firstInstanceOfStockHolding];
        [arrayOfStockHolding addObject:secondInstanceOfStockHolding];
        [arrayOfStockHolding addObject:thirdInstanceOfStockHolding];
        
        [firstInstanceOfStockHolding setPurchaseSharePrice:2.30];
        [firstInstanceOfStockHolding setCurrentSharePrice:4.50];
        [firstInstanceOfStockHolding setNumberOfShares:40];
        [secondInstanceOfStockHolding setPurchaseSharePrice:12.19];
        [secondInstanceOfStockHolding setCurrentSharePrice:10.56];
        [secondInstanceOfStockHolding setNumberOfShares:90];
        [thirdInstanceOfStockHolding setPurchaseSharePrice:45.10];
        [thirdInstanceOfStockHolding setCurrentSharePrice:49.51];
        [thirdInstanceOfStockHolding setNumberOfShares:210];
        
//        NSUInteger arrayCount = [arrayOfStockHolding count];
//        for (int i = 0; i < arrayCount; i++) {
//            BNRStockHolding *d = arrayOfStockHolding[i];
        for (BNRStockHolding *d in arrayOfStockHolding) {
            float cost = [d costInDollars];
            float value = [d valueInDollars];
            NSLog(@"In Dollars, the cost is %.2f and the value is %.2f", cost, value);
        }
        
        
        
    }
    return 0;
}
