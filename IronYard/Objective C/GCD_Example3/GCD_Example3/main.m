//
//  main.m
//  GCD_Example3
//
//  Created by Elena Maso Willen on 21/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Primes.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSOperationQueue *myQueue = [[NSOperationQueue alloc] init];
        Primes *myPrimeObject = [[Primes alloc] init];
        [myQueue setMaxConcurrentOperationCount:1];
        [myQueue addOperation:myPrimeObject];
        [myQueue waitUntilAllOperationsAreFinished];
        
        
    
    
    }
    return 0;
}
