//
//  main.m
//  FizzBuzz
//
//  Created by Elena Maso Willen on 01/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        int counter;
        for (counter = 0; counter <= 100; counter++) {
            if (counter % 3 == 0 && counter % 5 == 0) {
                NSLog(@"FizzBuzz");
            } else if (counter % 3 == 0) {
                NSLog(@"Fizz");
            } else if (counter % 5 == 0) {
                NSLog(@"Buzz");
            } else {
                NSLog(@"%d", counter);
            }
        }
    
    }
    return 0;
}
