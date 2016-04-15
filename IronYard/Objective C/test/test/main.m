//
//  main.m
//  test
//
//  Created by Elena Maso Willen on 13/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

void functionDavidAndElena(NSMutableArray *arrayOfLuckyNumbers, NSMutableArray *arrayReducedByBelenAndAnt, int indexToFindLuckyNumber, long indexToGiveToBelenAndAnt) {

    [arrayOfLuckyNumbers addObject:arrayReducedByBelenAndAnt[indexToFindLuckyNumber]];
    NSLog(@"Lucky numbers: %@", arrayOfLuckyNumbers);


    indexToGiveToBelenAndAnt = [arrayOfLuckyNumbers count];
    NSLog(@"indexToGiveToBelenAndAnt: %ld", indexToGiveToBelenAndAnt);
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        
        NSMutableArray *arrayReducedByBelenAndAnt = [[NSMutableArray alloc] init];
        for (NSUInteger i = 1; i < 20; i++)
        {
            [arrayReducedByBelenAndAnt addObject:@(i)];
        }

        NSLog(@"%@", arrayReducedByBelenAndAnt);
        
        int indexToFindLuckyNumber = 0;
        
        NSMutableArray *arrayOfLuckyNumbers = [[NSMutableArray alloc] initWithCapacity:0];
        
        long indexToGiveToBelenAndAnt = [arrayOfLuckyNumbers count];

        
        while ((arrayReducedByBelenAndAnt.count != arrayOfLuckyNumbers.count)) {
            
            functionDavidAndElena(arrayOfLuckyNumbers, arrayReducedByBelenAndAnt,indexToFindLuckyNumber, indexToGiveToBelenAndAnt);
            
            if (arrayReducedByBelenAndAnt.count == arrayOfLuckyNumbers.count) {
                break;
            }
            
            indexToFindLuckyNumber += 1;
            NSLog(@"indexToFindLuckyNumber: %d", indexToFindLuckyNumber);
            
        
        }
        
        
//        if (arrayReducedByBelenAndAnt != arrayOfLuckyNumbers) {
//            
//            functionDavidAndElena(arrayOfLuckyNumbers, arrayReducedByBelenAndAnt,indexToFindLuckyNumber, indexToGiveToBelenAndAnt);
//            indexToFindLuckyNumber += 1;
//            NSLog(@"indexToFindLuckyNumber: %d", indexToFindLuckyNumber);
//        } else
//        {
//            NSLog(@"You have an array of Lucky Numbers: %@", arrayOfLuckyNumbers);
//        }
        
        
    }
    return 0;
}
