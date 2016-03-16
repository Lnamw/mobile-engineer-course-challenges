//
//  main.m
//  Functions
//
//  Created by Elena Maso Willen on 02/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

void hello(){
    NSLog(@"Hello there");
}

void adder (int x, int y) {
    int total = x + y;
    NSLog(@"%d add %d equals %d", x, y, total);
}

BOOL isEven (int x) {
    if (x % 2 == 0) {
        return YES;
    } else {
        return NO;
    }
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        hello();
        adder(6, 4);
    
        int myNumber = 1987;
        if (isEven(myNumber)) {
            NSLog(@"This number is even");
        } else {
            NSLog(@"This number is odd");
        }
    }
    return 0;
}
