//
//  main.m
//  Function Pointers
//
//  Created by Elena Maso Willen on 02/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

void swap (int *pointer1, int *pointer2) {
    int temp;
    
    temp = *pointer1;
    *pointer1 = *pointer2;
    *pointer2 = temp;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int myInteger1 = 5;
        int myInteger2 = 10;
        
        int *myPointer1 = &myInteger1;
        int *myPointer2 = &myInteger2;
        
        swap(myPointer1, myPointer2);
        
        NSLog(@"myInteger1 was 5 but now is %d.\n", myInteger1);
        NSLog(@"myInteger2 was 10 but now is %d.\n", myInteger2);
    
    
    }
    return 0;
}
