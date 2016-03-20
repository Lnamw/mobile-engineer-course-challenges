//
//  main.m
//  Block2
//
//  Created by Elena Maso Willen on 18/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        int i = 0;
        void (^testBlock)(void) = ^{
            NSLog(@"The local variable i is %d", i);
        };
        while (i < 3) {
            testBlock();
            i++;
        }
    
    
    }
    return 0;
}
