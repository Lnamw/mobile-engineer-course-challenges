//
//  Car.m
//  Composition
//
//  Created by Elena Maso Willen on 14/03/2016.
//  Copyright © 2016 Training. All rights reserved.
//

#import "Car.h"

@implementation Car

-(id)init
{
    self = [super init];
      if (self) {
        self.carTyres = [[Tyres alloc] init];
        self.carEngine = [[Engine alloc] init];
      }
    return self;
}

@end
