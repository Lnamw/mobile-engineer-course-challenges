//
//  Car.m
//  MyCustomClass
//
//  Created by Elena Maso Willen on 03/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "Car.h"

@implementation Car

//- (int)age {
//    return age;
//}
//
//- (void)setAge:(int)value {
//    age = value;
//}
//
//- (NSString *)make {
//    return make;
//}
//
//- (void)setMake:(NSString *)value{
//    make = value;
//}
//
//- (BOOL)engineOn{
//    return engineOn;
//}
//
//- (void)setEngineOn:(BOOL)value {
//    engineOn = value;
//}

- (BOOL)isServiceRequired {
    return ([self age] > 1);
}

- (void)driveCar {
    if ([self engineOn]) {
        NSLog(@"I am driving!!\n");
        // do other stuff
    } else {
        NSLog(@"Please start the engine\n");
        // do other stuff
    }
}

- (id)init {
    self = [super init];
    if  (self) {
        _age = 20;
        _make = @"Mini";
    }
    return self;
}
    
- (id)initWithMake:(NSString *)initMake age:(int)initAge {
        self = [super init];
        if (self) {
            _make = initMake;
            _age = initAge;
        }
        return self;
    }
    




@end
