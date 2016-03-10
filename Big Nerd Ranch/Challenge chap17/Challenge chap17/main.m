//
//  main.m
//  Challenge chap17
//
//  Created by Elena Maso Willen on 10/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames" encoding:NSUTF8StringEncoding error:NULL];
        
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        for (NSString *n in names) {
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
    
    }
    return 0;
}
