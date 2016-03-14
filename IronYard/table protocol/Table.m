//
//  Table.m
//  table protocol
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "Table.h"

@implementation Table

-(void)howManyRowsDoIRequire
{
    NSLog(@"I need %lu rows", [self.delegate numberOfRows]);
}

-(void)howManySectionsDoIRequire
{
    NSLog(@"I need %lu sections", [self.delegate numberOfSections]);
}

-(void)whatIsTheTitleForTheCell:(int)rowNumber
{
    NSLog(@"The title for the row is %@",[self.delegate titleForCell:rowNumber]);
}

@end
