//
//  main.m
//  Challenge Chapt13
//
//  Created by Elena Maso Willen on 08/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSHost *instanceOfNSHost = [NSHost currentHost];
        NSString *stringLocalizedName = [instanceOfNSHost localizedName];
        NSLog(@"My computer name is %@", stringLocalizedName); 
    
    }
    return 0;
}
