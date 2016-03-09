//
//  main.m
//  Challenge Chapt 14
//
//  Created by Elena Maso Willen on 08/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSDate *now = [NSDate date];
        
        // NSLog(@"The date is %@", now);
        
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1975];
        [comps setMonth:7];
        [comps setDay:4];
        [comps setHour:1];
        [comps setMinuteè:41];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        // NSLog(@"My Date of Birth is %@", dateOfBirth);
        
        double secondsSinceMyDateOfBirth = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I am born since %f seconds", secondsSinceMyDateOfBirth);
    }
    return 0;
}
