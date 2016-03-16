//
//  Observer.h
//  KVO
//
//  Created by Elena Maso Willen on 15/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Settings.h"

@interface Observer : NSObject

@property (strong, nonatomic) Settings *mySettings;

-(id)initWithSettings:(Settings *)inSettings;

@end
