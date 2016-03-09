//
//  main.m
//  TimesTwo
//
//  Created by Elena Maso Willen on 08/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

    
        NSDate *currentTime = [NSDate date];
        NSLog(@"currentTime value is %p", currentTime);
        
        NSDate *startTime = currentTime;
        
        sleep(2);
        
        currentTime = [NSDate date];
        NSLog(@"currentTime value is %p", currentTime);
        NSLog(@"The address of the original object is %p", startTime);
        
        currentTime = nil;
        NSLog(@"currentTime's value is %p", currentTime);
        
    
    }
    return 0;
}
