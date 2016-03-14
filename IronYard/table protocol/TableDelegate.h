//
//  TableDelegate.h
//  table protocol
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TableDelegate <NSObject>

@required
-(NSInteger)numberOfRows;
-(NSInteger)numberOfSections;
-(NSString *)titleForCell:(int)rowNumber;

@end
