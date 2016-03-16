//
//  main.m
//  NSMutableString
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSString *myString1 = @"This is String A";
        NSMutableString *myMutableString;
    
        myMutableString = [NSMutableString stringWithString:myString1];
        NSLog(@"My mutable string is %@\n", myMutableString);
    
        [myMutableString insertString:@" mutable" atIndex:7];
        NSLog(@"My mutable string is %@\n", myMutableString);
        
        [myMutableString deleteCharactersInRange:NSMakeRange(16, 13)];
        NSLog(@"My mutable string is %@\n", myMutableString);
        
    }
    return 0;
}
