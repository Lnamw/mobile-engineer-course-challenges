//
//  main.m
//  Scope
//
//  Created by Elena Maso Willen on 02/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int bar = 10;
void myFunction (int someValue) {
    bar++;
    NSLog(@"The value of bar is %d", bar);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int myInteger = 10;
        // insert code here...
        int foo = 65;
        for (int i = 0; i < 10; i++) {
            int foo = 55;
            myInteger++;
            bar++;
            myFunction (foo);
            NSLog(@"The value of foo is %d", foo);
        }
        NSLog(@"The value of foo is %d", foo);

    }
    return 0;
}
