//
//  main.m
//  Array Pointers
//
//  Created by Elena Maso Willen on 02/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int myArray[4] = {10,20,30,40};
        int *myPointer = &myArray[0];
        
        NSLog(@"Element 0 of array is %d.\n", myArray[0]);
        NSLog(@"Element 0 via pointer is %d.\n", *myPointer);
        NSLog(@"Element 1 via pointer is %d.\n", *(++myPointer));
        NSLog(@"Element 2 via pointer is %d.\n", *(++myPointer));
        NSLog(@"Element 3 via pointer is %d.\n", *(++myPointer));
        
        NSLog(@"Element 2 via pointer is %d.\n", *(--myPointer));
        NSLog(@"Element 1 via pointer is %d.\n", *(--myPointer));
        NSLog(@"Element 0 via pointer is %d.\n", *(--myPointer));
        NSLog(@"Element ? via pointer is %d.\n", *(--myPointer));

    
    }
    return 0;
}
