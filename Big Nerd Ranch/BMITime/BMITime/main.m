//
//  main.m
//  BMITime
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        
        //Create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++){
            //Create an instance of BNREmployee
            BNREmployee *mickey = [[BNREmployee alloc] init];
            //Give the instance variable interesting values
            mickey.weightInKilos = 90 + i;
            mickey.heightInMeters = 1.8 - i/10.0;
            mickey.employeeID = i;
            //Put the employee in the employee array
            [employees addObject:mickey];
        }
        
        //Create 10 assets
        for (int i = 0; i < 10; i++) {
            //Create an asset
            BNRAsset *asset = [[BNRAsset alloc] init];
            //Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = currentLabel;
            asset.resaleValue = 350 + i * 17;
            //Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            //Find that employee
            BNREmployee *randomEmployee = [employees objectAtIndex:randomIndex];
            //Assign the asset to the employee
            [randomEmployee addAssets:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        [employees removeObjectAtIndex:5];
        NSLog(@"Giving up ownership of arrays");
        employees = nil;
        

    
        // Create an instance of BNREmployee
        BNREmployee *mickey = [[BNREmployee alloc] init];
        
        // Give the instance variable interesting values using setters
//        [mickey setWeightInKilos:96];
//        [mickey setHeightInMeters:1.8];
        mickey.weightInKilos = 96;
        mickey.heightInMeters = 1.8;
        mickey.employeeID = 12;
        mickey.hireDate = [NSDate dateWithNaturalLanguageString:@"aug 2nd, 2010"];
        
        // Log the instance variables using the getters
//        float height = [mickey heightInMeters];
//        int weight = [mickey weightInKilos];
        float height = mickey.heightInMeters;
        int weight = mickey.weightInKilos;
        
        NSLog(@"Mickey is %.2f meters tall and weight %d kilograms", height, weight);
//        NSLog(@"Employee %lu hired on %@", mickey.employeeID, mickey.hireDate);
        NSDate *date = mickey.hireDate;
        NSLog(@"%@ hired on %@", mickey, date);
        
        
        // Log some values using customs methods
        float bmi = [mickey bodyMassIndex];
        double years = [mickey yearsOfEmployment];
        NSLog(@"Mickey has a BMI of %.2f and has worked with us for %.2f years", bmi, years);
        
    
    }
    return 0;
}
