//
//  BNRPerson.h
//  BMITime
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

//{
//    // BNRPerson has two instances variables
//    float _heightInMeters;
//    int _weightInKilos;
//}
//
//
////BNRPerson has a method to read and set its instance variable
//- (float)heightInMeters;
//- (void)setHeightInMeters:(float)h;
//- (int)weightInKilos;
//- (void)setWeightInKilos:(int)w;


//BNRPerson has 2 properties
@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;

//BNRPerson has a method that calculates the Body Mass Index
- (float)bodyMassIndex;


@end
