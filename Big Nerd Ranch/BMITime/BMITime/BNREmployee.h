//
//  BNREmployee.h
//  BMITime
//
//  Created by Elena Maso Willen on 16/03/2016.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson

{
    NSMutableArray *_assets;
}

@property (nonatomic) unsigned int employeeID;
@property (nonatomic) unsigned int officeAlarmCode;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSArray *assets;

- (double)yearsOfEmployment;
- (void)addAssets:(BNRAsset *)a;
- (unsigned int)valueOfAssets;


@end
