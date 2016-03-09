//
//  main.m
//  NSNumber
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSNumber *myInt, *myFloat;
        myInt = @30;
        myFloat = @1.234567;
        
        NSLog(@"myInt is %d", [myInt intValue]);
        NSLog(@"myFloat is %f", [myFloat floatValue]);
        
        NSLog(@"myInt is %d", [myFloat intValue]);
        NSLog(@"myFloat is %f", [myInt floatValue]);
        
        NSMutableArray *myArray = [NSMutableArray arrayWithCapacity:0];
        [myArray addObject:@"String"];
        [myArray addObject:myInt];
        [myArray addObject:myFloat];
        
        int i;
        for (i=0; i < [myArray count]; i++)
            NSLog(@"Array element %i is %@", i, myArray[i]);
        
        if ([myInt isEqualToNumber:myFloat]) {
            NSLog(@"Ther are equal");
        } else
            NSLog(@"There are not equal");
        
        
        BOOL myBoolean = YES;
        NSNumber *myNSBool = [NSNumber numberWithBool:myBoolean];
        NSLog(@"The output of myNSBool is %@", myNSBool);
        
        BOOL myNewBoolean = [myNSBool boolValue];
        NSLog(@"Tha output of myNewBoolean is %d", myNewBoolean);
        
    }
    return 0;
}
