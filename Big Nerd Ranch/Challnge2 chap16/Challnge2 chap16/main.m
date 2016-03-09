//
//  main.m
//  Challnge2 chap16
//
//  Created by Elena Maso Willen on 09/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSLog(@"Where should I start counting? ");
        NSString *name = [NSString stringWithUTF8String:(const char *)name];
        int num = atoi(name);
        
        for (int i = num; i >= 0; i -= 3) {
            printf("%d\n", i);
            if (i % 5 == 0) {
                printf("Found one!\n");
            }
        }
    
    
    }
    return 0;
}
