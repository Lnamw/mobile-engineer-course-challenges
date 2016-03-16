//
//  AppleBox.h
//  Apples protocol
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppleDelegate.h"

@interface AppleBox : NSObject

@property (weak, nonatomic) id <AppleDelegate> delegate;
@property int numberOfApples;

-(void)appleBeingBought;

@end
