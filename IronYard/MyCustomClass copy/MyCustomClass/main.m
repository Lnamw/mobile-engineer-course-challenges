//
//  main.m
//  MyCustomClass
//
//  Created by Elena Maso Willen on 03/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Car *myCar = nil;
        myCar = [[Car alloc] init];
        
        [myCar setAge:2];
        [myCar setMake:@"Aston MArtin"];
        
        if ([myCar isServiceRequired]) {
            NSLog(@"The car requires a service");
        } else {
            NSLog(@"The car does not require a service");
        }
        
        NSLog(@"My car is a %@ and it is %d years ld\n", [myCar make], [myCar age]);
        
        myCar.age = 3;
        myCar.make = @"Jaguar";
        NSLog(@"My car is a %@ and it is %d years old\n", myCar.make, myCar.age);
        
        
        Car *my2ndCar = nil;
        my2ndCar = [[Car alloc]init];
        NSLog(@"My make is %@ and I am %d years old\n", my2ndCar.make, my2ndCar.age);
        
        Car *my3rdCar = nil;
        my3rdCar = [[Car alloc]initWithMake:@"Aston MArtin" age:4];
        NSLog(@"My make is %@ and I am %d years old\n", my3rdCar.make, my3rdCar.age);
       
        id genericObject;
        genericObject = myCar;
        [genericObject setMake:@"Lotus"];
        [genericObject setAge:3];
        NSLog(@"I am genericObject. My make is %@ and my age is %d.\n", [genericObject make], [genericObject age]);
        
    }
    return 0;
}
