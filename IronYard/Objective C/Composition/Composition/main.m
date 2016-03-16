//
//  main.m
//  Composition
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

        Car *myCar = [[Car alloc] init];
        
        [myCar setManufacturer:@"Ford"];
        [myCar setColour:@"Red"];
        [myCar setModel:@"Escort"];
        
        myCar.carEngine.fuel = @"Petrol";
        myCar.carEngine.cc = @2000;
        myCar.carEngine.cylinders = @8;
        myCar.carEngine.turbo = YES;
        
        myCar.carTyres.manufacturer = @"Dunlop";
        myCar.carTyres.rimSize = @"R9";
        myCar.carTyres.width = @200;
        
        NSLog(@"Car colour is %@", [myCar colour]);
        NSLog(@"Tyre manufacturer is %@", myCar.carTyres.manufacturer);
        NSLog(@"Total cylinders in engine is %@", myCar.carEngine.cylinders);
        
        [[myCar carTyres] setManufacturer:@"Pirelli"];
        NSLog(@"Tyre manufacturer is now %@", [[myCar carTyres] manufacturer]);
    
    
    }
    return 0;
}
