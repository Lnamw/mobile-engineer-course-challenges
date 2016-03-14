//
//  Table.h
//  table protocol
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TableDelegate.h"

@interface Table : NSObject

@property (weak, nonatomic) id <TableDelegate> delegate;

-(void)howManyRowsDoIRequire;
-(void)howManySectionsDoIRequire;
-(void)whatIsTheTitleForTheCell:(int)rowNumber;

@end
