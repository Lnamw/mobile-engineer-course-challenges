//
//  main.m
//  NSMutableArray
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
    
        NSMutableArray *myArray = [NSMutableArray arrayWithCapacity:0];
        
        [myArray addObject:@"Alpha"];
        [myArray addObject:@"Beta"];
        [myArray addObject:@"Gamma"];
        [myArray addObject:@"Delta"];
        
        int i;
        for (i = 0; i < [myArray count]; i++) {
            NSLog(@"String %d is %@", i+1, myArray[i]);
        }
        
        [myArray removeObjectAtIndex:1];
        
        for (i = 0; i < [myArray count]; i++) {
            NSLog(@"After removal String %d is %@", i+1, myArray[i]);
        }
        
        [myArray insertObject:@"Epsilon" atIndex:1];
        for (i = 0; i < [myArray count]; i++) {
            NSLog(@"After inserting String %d is %@", i+1, myArray[i]);
        }
        
        [myArray replaceObjectAtIndex:0 withObject:@"Zeta"];
        for (i = 0; i < [myArray count]; i++) {
            NSLog(@"After replacing String %d is %@", i+1, myArray[i]);
        }
        
        
    }
    return 0;
}
