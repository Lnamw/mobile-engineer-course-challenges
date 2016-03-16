//
//  main.m
//  Apples protocol
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppleBox.h"
#import "Store.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Store *myStore = [[Store alloc] init];
        AppleBox *myAppleBox = [[AppleBox alloc] init];
        
        myAppleBox.delegate = myStore;
        
        myAppleBox.numberOfApples = 5;
        
        [myAppleBox appleBeingBought];
        [myAppleBox appleBeingBought];
        [myAppleBox appleBeingBought];
        [myAppleBox appleBeingBought];
        [myAppleBox appleBeingBought];
    
    }
    return 0;
}
