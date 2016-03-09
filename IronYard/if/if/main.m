//
//  main.m
//  if
//
//  Created by Elena Maso Willen on 01/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int bottles = 0;
        if(bottles > 0) {
            NSLog(@"We have some bottles!");
        } else {
            NSLog(@"We have NO bottles!");
        }
        
        bottles = 10;
        BOOL greenBottles = 0;
        
        if (bottles > 0 && greenBottles) {
            NSLog(@"We have some bottles and they are green");
        } else if (bottles > 0 && !greenBottles) {
            NSLog(@"We have some bottles but they are not green");
        } else {
            NSLog(@"We have no bottles");
        }
    }
        
    return 0;
}
