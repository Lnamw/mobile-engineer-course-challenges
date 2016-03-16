//
//  main.m
//  NSArray
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
    
        NSArray *monthNames = @[@"January", @"February", @"March", @"April", @"May", @"June", @"July", @"August", @"September", @"October", @"November", @"December"];
    
        int i;
        for (i = 0; i < [monthNames count]; i++) {
            NSLog(@"Month %d is %@", i+1, monthNames[i]);
        }
        
        NSLog(@"The array monthNames has %lu elements.\n", [monthNames count]);
        
        for (id myNextObject in monthNames) {
            NSLog(@"Next Month is %@", myNextObject);
        }
        
        NSLog(@"March is element %lu", [monthNames indexOfObject:@"March"]);
        
        if ([monthNames indexOfObject:@"Christmas"] == NSNotFound) {
            NSLog(@"Not found");
        } else
            NSLog(@"Found");
        
    }
    return 0;
}
