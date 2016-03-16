//
//  main.m
//  BMITime
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...

    
        // Create an instance of BNRPerson
        BNRPerson *mickey = [[BNRPerson alloc] init];
        
        // Give the instance variable interesting values using setters
//        [mickey setWeightInKilos:96];
//        [mickey setHeightInMeters:1.8];
        mickey.weightInKilos = 96;
        mickey.heightInMeters = 1.8;
        
        // Log the instance variables using the getters
//        float height = [mickey heightInMeters];
//        int weight = [mickey weightInKilos];
        float height = mickey.heightInMeters;
        int weight = mickey.weightInKilos;
        
        NSLog(@"Mickey is %.2f meters tall and weight %d kilograms", height, weight);
        
        // Log some values using customs methods
        float bmi = [mickey bodyMassIndex];
        NSLog(@"Mickey has a BMI of %f", bmi);
        
    
    }
    return 0;
}
