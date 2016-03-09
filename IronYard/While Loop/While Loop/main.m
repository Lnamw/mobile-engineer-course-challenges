//
//  main.m
//  While Loop
//
//  Created by Elena Maso Willen on 01/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int bottles = 10;
        BOOL isThereAWall = NO;
        
        do {
            if (bottles == 1) {
                NSLog(@"%d green bottle if beer on the wall.\n", bottles);
            } else {
                NSLog(@"%d green bottles of beer on the wall.\n", bottles);
            }
            bottles--;
        } while (bottles > 0 && isThereAWall);
        
    }
    return 0;
}
