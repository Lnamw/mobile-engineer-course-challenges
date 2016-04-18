//
//  FindLuckyNumbers.m
//  test
//
//  Created by Elena Maso Willen on 15/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "FindLuckyNumbers.h"

@implementation FindLuckyNumbers

long findLuckyNumbers(NSArray * givenArray) {
    
    
    [arrayOfLuckyNumbers addObject:givenArray[indexToFindLuckyNumber]];
    NSLog(@"Lucky numbers: %@", arrayOfLuckyNumbers);
    
    
    long indexToGiveToBelenAndAnt = [arrayOfLuckyNumbers count];
    NSLog(@"indexToGiveToBelenAndAnt: %ld", indexToGiveToBelenAndAnt);
    
}






@end
