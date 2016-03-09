//
//  main.m
//  pointers
//
//  Created by Elena Maso Willen on 02/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int myInteger = 29;
        
        int *myPointer;
        myPointer = &myInteger;
        
        NSLog(@"myInteger has a value of %d\n", myInteger);
        NSLog(@"myPointer points to a value of %d\n", *myPointer);
        
        myInteger = 2;
        NSLog(@"myInteger has a value of %d\n", myInteger);
        NSLog(@"myPointer points to a value of %d\n", *myPointer);
        
        *myPointer = 3;
        NSLog(@"myInteger has a value of %d\n", myInteger);
        NSLog(@"myPointer points to a value of %d\n", *myPointer);
        

        
    }
    return 0;
}
