//
//  main.m
//  TimeAfterTime
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSDate *now = [[NSDate alloc]init];
        NSLog(@"This NSDate object lives at %p", now);
        NSLog(@"The date is %@", now);
            
        double seconds = [now timeIntervalSince1970];
        NSLog(@"it has been %f seconds since the start of 1970.", seconds);
    
        NSDate *later = [now dateByAddingTimeInterval:100000];
        NSLog(@"In 100000 seconds it will be %@", later);
        
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"My calandar is %@", [cal calendarIdentifier]);
        
        unsigned long day = [cal ordinalityOfUnit:NSDayCalendarUnit inUnit:NSMonthCalendarUnit forDate:now];
        NSLog(@"This is day %lu of the month", day);
    }
    return 0;
    }