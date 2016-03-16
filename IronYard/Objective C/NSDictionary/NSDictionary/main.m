//
//  main.m
//  NSDictionary
//
//  Created by Elena Maso Willen on 06/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        NSDictionary *myColours = @{@"Colour1":@"Red", @"Colour2":@"Green", @"Colour3":@"Blue"};
        
        NSLog(@"Selected colour is %@", [myColours objectForKey:@"Colour2"]);
        
        NSArray *myShapes = @[@"Circle", @"Triangle", @"Square", @"Hexagon"];
        NSNumber *myAge = [NSNumber numberWithInt:30];
        NSDictionary *allSorts = @{@"Colours":myColours, @"Shapes":myShapes, @"Age":myAge};
        NSLog(@"The object for the key colour is %@",[allSorts objectForKey:@"Colours"]);
        NSLog(@"The object for the key shape is %@",[allSorts objectForKey:@"Shapes"]);
        NSLog(@"The object for the key age is %@",[allSorts objectForKey:@"Age"]);
    
        NSLog(@"Here are all the keys for the allSorts dictionary %@", [allSorts allKeys]);
        
        NSMutableDictionary *foods = [NSMutableDictionary dictionary];
        [foods setObject:@"banana" forKey:@"fruit"];
        [foods setObject:@"onion" forKey:@"vegetable"];
        [foods setObject:@"turkey" forKey:@"meat"];
        NSLog(@"The fruit is %@",[foods objectForKey:@"fruit"]);
        
        [foods removeObjectForKey:@"vegetable"];
        
        
    }
    return 0;
}
