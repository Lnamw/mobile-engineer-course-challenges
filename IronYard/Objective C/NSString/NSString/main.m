//
//  main.m
//  NSString
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSString *myString1 = @"AbCdEfGhIjKlMnOp";
        NSString *myString2 = @"1234567890";
        NSString *result;
        
        NSLog(@"Length of myString 1 is %lu\n", [myString1 length]);
        
        result = [NSString stringWithString:myString1];
        NSLog(@"The copy is %@\n", result);
    
        result = [myString1 stringByAppendingString:myString2];
        NSLog(@"Two strings appended is %@.\n", result);
        
        if ([myString1 isEqualToString:myString2])
            NSLog(@"Strings are equals");
        else
            NSLog(@"Strings are not equals");
        
        result = [myString1 uppercaseString];
        NSLog(@"Uppercase conversion is %@\n", result);
        
        result = [myString1 lowercaseString];
        NSLog(@"Lowercase conversion is %@\n", result);
        
        result = [myString1 substringToIndex:4];
        NSLog(@"First 4 characters are %@\n", result);
        
        result = [myString1 substringFromIndex:8];
        NSLog(@"Character from index 8 are %@\n", result);
        
        NSRange myRange = NSMakeRange(6, 4);
        result = [myString1 substringWithRange:myRange];
        NSLog(@"Range of character are: %@\n", result);
        
        int score = 100;
        NSString *name = @"Benjamin";
        result = [NSString stringWithFormat:@"%@ has achieved a score of %d", name, score];
        NSLog(@"%@\n", result);
        
        
    }
    return 0;
}
