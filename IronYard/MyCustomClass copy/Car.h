//
//  Car.h
//  MyCustomClass
//
//  Created by Elena Maso Willen on 03/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject
//{
//    NSString *make;
//    int age;
//    BOOL engineOn;
//}
//
//- (NSString *)make;
//- (void)setMake:(NSString *)value;
//
//- (int)age;
//- (void)setAge:(int)value;
//
//- (BOOL)engineOn;
//- (void)setengineOn:(BOOL)value;

@property int age;
@property (strong, nonatomic) NSString *make;
@property BOOL engineOn;

- (BOOL)isServiceRequired;
- (void)drivecar;

- (id)initWithMake:(NSString *)initMake age:(int)initAge;

@end
