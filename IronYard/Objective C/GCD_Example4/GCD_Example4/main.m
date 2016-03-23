//
//  main.m
//  GCD_Example4
//
//  Created by Elena Maso Willen on 21/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fibonacci.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Fibonacci *myFibonacciObject = [[Fibonacci alloc] init];
        NSOperationQueue *myQueue = [[NSOperationQueue alloc] init];
        
        NSOperation *op = [[NSInvocationOperation alloc]
                           initWithTarget:myFibonacciObject
                           selector:@selector(calculateFibonacci:)
                           object:@10];
        
        [myQueue addOperation:op];
        [myQueue waitUntilAllOperationsAreFinished];
        
        

    
    
    
    }
    return 0;
}
