//
//  main.m
//  Groceries
//
//  Created by Elena Maso Willen on 09/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSMutableArray *groceryList = [NSMutableArray array];
        
        NSMutableString *bread = @"Loaf of bread";
        NSMutableString *milk = @"container of milk";
        NSMutableString *butter = @"Stick of butter";
        NSMutableString *water = @"6 bottles of water";
        
        [groceryList addObject:bread];
        [groceryList addObject:milk];
        [groceryList addObject:butter];
        [groceryList addObject:water];
        
        NSLog(@"My grocey list is:");
        for (NSString *d in groceryList) {
            NSLog(@"%@", d);
        }
    
    
    }
    return 0;
}
