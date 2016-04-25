//
//  main.m
//  Classes
//
//  Created by Elena Maso Willen on 21/04/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicles.h"
#import "car.h"
#import "Bike.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Car *myCar = [[Car alloc]init];
        NSLog(@"Number of wheels %lu", (unsigned long)myCar.numberOfWheels);
        
        Vehicles *myVehicle = myCar;
        NSLog(@"Number of wheels %lu", (unsigned long)myVehicle.numberOfWheels);
        
    }
    return 0;
}
