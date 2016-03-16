//
//  DataSource.m
//  table protocol
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource

-(NSInteger)numberOfRows
{
    NSInteger totalRows = 5;
    return totalRows;
}

-(NSInteger)numberOfSections
{
    NSInteger totalSections = 1;
    return totalSections;
}

-(NSString *)titleForCell:(int)rowNumber
{
    NSArray *testData = @[@"Title 1", @"Title 2", @"Title 3", @"Title 4", @"Title 5"];
    return testData[rowNumber];
}

@end
